import os, glob, sys, time
from gimpfu import *

def ie_inventory_shadow(file, x_offset, y_offset, outputFolder):
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

        #resize
        pdb.gimp_context_set_interpolation(2) #INTERPOLATION-CUBIC (2)
        pdb.gimp_image_scale(fileImage, 64, 64)
        layer = fileImage.layers[0]
        print "Resized '" + filename_without_ext + "' ..."

        # Create new layer.
        newLayer = pdb.gimp_layer_new(fileImage, layer.width, layer.height, 1, "Shadow", layer.opacity, layer.mode) #RGBA-IMAGE (1)
        # the +1 adds it behind the top layer
        fileImage.add_layer(newLayer, +1)

        # Put image into the new layer.
        pdb.gimp_edit_copy(layer)
        floating = pdb.gimp_edit_paste(newLayer, True)

        # Update the new layer.
        newLayer.flush()
        newLayer.merge_shadow(True)
        newLayer.update(0, 0, newLayer.width, newLayer.height)
        # floating to layer
        pdb.gimp_floating_sel_to_layer(floating)
        print "Duplicated '" + filename_without_ext + "' ..."

        #make layer black
        pdb.gimp_brightness_contrast(newLayer, -127, 127)
        print "Shadowed '" + filename_without_ext + "' ..."

        #move the layer
        pdb.gimp_layer_set_offsets(newLayer, x_offset, y_offset)
        print "Moved '" + filename_without_ext + "' ..."

        #set opacity
        pdb.gimp_layer_set_opacity(newLayer, 50)
        print "Set Opacity on '" + filename_without_ext + "' ..."

        #flatten
        flattened = pdb.gimp_image_flatten(fileImage)
        print "Flattened '" + filename_without_ext + "' ..."

        # Export flattened image
        target = outputFolder + "/" + filename_without_ext + "-s.png"
        print "Saving '" + target + "' ..."
        pdb.file_png_save_defaults(fileImage, flattened, target, target, run_mode=RUN_NONINTERACTIVE)
        print "Saved '" + target + "'!"


    except Exception as err:
        gimp.message("Unexpected error: " + str(err))



def run(directory, x_offset, y_offset, outputFolder):
        print "Run: directory : %s" % directory
        print "Run: outputFolder : %s" % outputFolder
        print "Run: x_offset : %s" % x_offset
        print "Run: y_offset : %s" % y_offset

        start=time.time()
        print "Run: Running on directory \"%s\"" % directory
        globPath = os.path.join(directory, '*.png')

        print "looking at path: %s" % globPath

        for infile in glob.glob(globPath):
                print "Run: found file : %s" % infile
                ie_inventory_shadow(infile, x_offset, y_offset, outputFolder)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
