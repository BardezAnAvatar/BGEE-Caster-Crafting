import os, glob, sys, time
from gimpfu import *

#this script will crop the image to the top-left 75% of the image (so focusing on the head of the wands) and then resize

def ie_inventory_resize(file, outputFolder, cropScale):
    #Open the file; size to 64x64; duplicate layer; make black; offset 4, 5; set opacity to 50%; save to output

    print "Opening '" + file + "' ..."

    # Indicates that the process has started.
    gimp.progress_init("Opening '" + file + "' ...")

    try:
        filename = os.path.basename(file)
        # Use slicing to remove the extension
        filename_without_ext = filename[:filename.rindex('.')]

        # Open file.
        fileImage = None
        fileImage = pdb.gimp_file_load(file, file, run_mode=RUN_NONINTERACTIVE)
        print "Opened '" + filename_without_ext + "' ..."

        #crop to 75%
        width = pdb.gimp_image_width(fileImage)
        height = pdb.gimp_image_height(fileImage)
        newWidth = width * cropScale
        newHeight = height * cropScale
        cropWidth = int(newWidth)
        cropHeight = int(newHeight)
        pdb.gimp_image_crop(fileImage, cropWidth, cropHeight, 0, 0)

        #resize
        pdb.gimp_context_set_interpolation(2) #INTERPOLATION-CUBIC (2)
        pdb.gimp_image_scale(fileImage, 64, 64)
        layer = fileImage.layers[0]
        print "Resized '" + filename_without_ext + "' ..."

        # Export flattened image
        target = outputFolder + "/" + filename_without_ext + "-i.png"
        print "Saving '" + target + "' ..."
        pdb.file_png_save_defaults(fileImage, layer, target, target, run_mode=RUN_NONINTERACTIVE)
        #pdb.file_png_save2(fileImage, flattened, target, target, False, 9, True, False, False, True, True, False, False, run_mode=RUN_NONINTERACTIVE)
        print "Saved '" + target + "'!"

    except Exception as err:
        gimp.message("Unexpected error: " + str(err))



def run(directoryIn, directoryOut, cropScale):
        print "Run: directoryIn : %s" % directoryIn
        print "Run: directoryOut : %s" % directoryOut
        print "Run: cropScale : %s" % cropScale

        start=time.time()
        print "Run: Running on directory \"%s\"" % directoryIn
        globPath = os.path.join(directoryIn, '*.png')

        print "looking at path: %s" % globPath

        for infile in glob.glob(globPath):
                print "Run: found file : %s" % infile
                ie_inventory_resize(infile, directoryOut, cropScale)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
