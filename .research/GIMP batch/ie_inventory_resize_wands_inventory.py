import os, glob, sys, time
from gimpfu import *

#this script will extend what is expected to be an 80x80 image to 96x96 at the top-left
# of the image, then crop it to 64x64 so that 75% of the resulting canvase image is saved
# (so focusing on the head of the wands)

def ie_inventory_resize(file, outputFolder):
    #Open the file; size to 64x64; duplicate layer; make black; offset 4, 5; set opacity to 50%; save to output

    print "Opening '" + file + "' ..."

    # Indicates that the process has started.
    gimp.progress_init("Opening '" + file + "' ...")

    try:
        filename = os.path.basename(file)
        # Use slicing to remove the extension
        filename_without_ext = filename[:filename.rindex('-')] #instead of .png, chop off -f.png

        # Open file.
        fileImage = None
        fileImage = pdb.gimp_file_load(file, file, run_mode=RUN_NONINTERACTIVE)
        print "Opened '" + filename_without_ext + "' ..."

        #resize canvas
        pdb.gimp_image_resize(fileImage, 96, 96, 16, 16)
        print "Resized canvas for '" + filename_without_ext + "' ..."
        layer = fileImage.layers[0]
        pdb.gimp_layer_resize(layer, dimension, 96, 96, 16, 16)
        print "Resized layer for '" + filename_without_ext + "' ..."

        #crop to inventory size
        pdb.gimp_image_crop(fileImage, 64, 64, 0, 0)
        layer = fileImage.layers[0]

        # Export flattened image
        target = outputFolder + "/" + filename_without_ext + "-f.png"
        print "Saving '" + target + "' ..."
        pdb.file_png_save_defaults(fileImage, layer, target, target, run_mode=RUN_NONINTERACTIVE)
        print "Saved '" + target + "'!"

    except Exception as err:
        gimp.message("Unexpected error: " + str(err))



def run(directoryIn, directoryOut):
        print "Run: directoryIn : %s" % directoryIn
        print "Run: directoryOut : %s" % directoryOut

        start=time.time()
        print "Run: Running on directory \"%s\"" % directoryIn
        globPath = os.path.join(directoryIn, '*.png')

        print "looking at path: %s" % globPath

        for infile in glob.glob(globPath):
                print "Run: found file : %s" % infile
                ie_inventory_resize(infile, directoryOut)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
