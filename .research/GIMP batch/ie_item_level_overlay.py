import os, glob, sys, time
from gimpfu import *

#
#   This script will:
#       - open the file
#       - loop from 2 to 50
#           - open the overlay matching the loop
#           - apply it on top of the icon as a higher layer
#           - save the output
#
def ie_item_level_overlay(icon, overlayDirectory, outputDirectory):
    #Open the file; size to 64x64; duplicate layer; make black; offset 4, 5; set opacity to 50%; save to output

    print "Opening '" + icon + "' ..."

    # Indicates that the process has started.
    gimp.progress_init("Opening '" + icon + "' ...")

    try:
        filename = os.path.basename(icon)
        # Use slicing to remove the extension
        filename_without_ext = filename[:filename.rindex('.')]

        # Open file.
        fileImage = None
        fileImage = pdb.gimp_file_load(icon, icon, run_mode=RUN_NONINTERACTIVE)
        print "Opened '" + filename_without_ext + "' ..."

        # Convert the image to RGB; lose the palette crap
        type = pdb.gimp_image_base_type(fileImage) #get the type
        if (type != 0): #RGB = 0; Gray = 1; indexed = 2
            pdb.gimp_image_convert_rgb(fileImage)

        #check dimensions
        width = pdb.gimp_image_width(fileImage)
        height = pdb.gimp_image_height(fileImage)
        print "{height} x {width}".format(height=height, width=width)
        if (width != height):
            errMsg = "Mismatch of height ({height}) and width ({width}).".format(height=height, width=width)
            raise Exception(errMsg)
        if (width != 32 and width != 64):
            errMsg = "Width ({width}) expected to be 32 or 64 pixels.".format(width=width)
            raise Exception(errMsg)

        print "Entering CL loop ..."
        for i in range(2,51):
            casterLevel = "{0}".format(i).zfill(2)
            print "attempting CL {0}".format(casterLevel)
            overlay = "{overlayDirectory}/{width}/CL{casterLevel}.png".format(overlayDirectory=overlayDirectory, width=width, casterLevel=casterLevel)
            print "overlay is {0}".format(overlay)

            # Open file.
            overlayLayer = None
            overlayLayer = pdb.gimp_file_load_layer(fileImage, overlay)
            print "Opened '" + overlay + "' ..."
            fileImage.add_layer(overlayLayer, -1)   # add the new layer to the first image
            print "Overlaying ..."

            # Export flattened image
            target = "{outputDirectory}/{filename_without_ext}-{casterLevel}.png".format(outputDirectory=outputDirectory, filename_without_ext=filename_without_ext, casterLevel=casterLevel)
            print "Saving '" + target + "' ..."
            new_image = pdb.gimp_image_duplicate(fileImage)
            exportlayer = pdb.gimp_image_merge_visible_layers(new_image, CLIP_TO_IMAGE)
            pdb.file_png_save_defaults(new_image, exportlayer, target, target, run_mode=RUN_NONINTERACTIVE)
            print "Saved '" + target + "'!"
            pdb.gimp_image_remove_layer(fileImage, overlayLayer)   # remove the layer for next loop

    except Exception as err:
        gimp.message("Unexpected error: " + str(err))




def run(directoryIn, directoryOverlay, directoryOutput):
        print "Run: directoryIn : %s" % directoryIn
        print "Run: directoryOverlay : %s" % directoryOverlay
        print "Run: directoryOutput : %s" % directoryOutput

        start = time.time()
        print "Run: Running on directoryIn \"%s\"" % directoryIn
        globPath = os.path.join(directoryIn, '*.png')

        print "looking at path: %s" % globPath

        for infile in glob.glob(globPath):
                print "Run: found file : %s" % infile
                ie_item_level_overlay(infile, directoryOverlay, directoryOutput)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
