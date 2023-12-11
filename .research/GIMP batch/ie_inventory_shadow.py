import os, glob, sys, time
from gimpfu import *
import gimpcolor

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

        # Create new layer.
        pdb.gimp_context_set_background((0,255,0))
        newLayer = pdb.gimp_layer_new_from_visible(fileImage, fileImage, "shadow")
        print "Created New Layer for '" + filename_without_ext + "' ..."
        pdb.gimp_image_insert_layer(fileImage, newLayer, None, +1) # the +1 adds it behind the top layer
        print "Inserted New Layer for '" + filename_without_ext + "' ..."

        #make layer black
        pdb.gimp_drawable_desaturate(newLayer, 4) #DESATURATE-VALUE (4)
        pdb.gimp_brightness_contrast(newLayer, -127, 127)
        pdb.gimp_drawable_threshold(newLayer, 6, 1, 1) #HISTOGRAM-RGB (6)
        print "Shadowed '" + filename_without_ext + "' ..."

        #move the layer
        pdb.gimp_layer_set_offsets(newLayer, x_offset, y_offset)
        print "Moved '" + filename_without_ext + "' ..."

        #set opacity
        pdb.gimp_layer_set_opacity(newLayer, 50)
        print "Set Opacity on '" + filename_without_ext + "' ..."

        #merge
        merged = pdb.gimp_image_merge_visible_layers(fileImage, 0) #EXPAND-AS-NECESSARY (0)
        print "Merged '" + filename_without_ext + "' ..."

        # Export flattened image
        target = outputFolder + "/" + filename_without_ext + "-s.png"
        print "Saving '" + target + "' ..."
        pdb.file_png_save_defaults(fileImage, merged, target, target, run_mode=RUN_NONINTERACTIVE)
        #pdb.file_png_save2(fileImage, flattened, target, target, False, 9, True, False, False, True, True, False, False, run_mode=RUN_NONINTERACTIVE)
        print "Saved '" + target + "'!"

    except Exception as err:
        gimp.message("Unexpected error: " + str(err))



def run(directoryIn, x_offset, y_offset, directoryOut):
        print "Run: directoryIn : %s" % directoryIn
        print "Run: directoryOut : %s" % directoryOut
        print "Run: x_offset : %s" % x_offset
        print "Run: y_offset : %s" % y_offset

        start=time.time()
        print "Run: Running on directoryIn \"%s\"" % directoryIn
        globPath = os.path.join(directoryIn, '*.png')

        print "looking at path: %s" % globPath

        for infile in glob.glob(globPath):
                print "Run: found file : %s" % infile
                ie_inventory_shadow(infile, x_offset, y_offset, directoryOut)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
