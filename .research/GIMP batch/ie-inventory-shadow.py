from gimpfu import *

def ie_inventory_shadow(file, x_offset, y_offset, outputFolder):
    #Open the file; size to 64x64; duplicate layer; make black; offset 4, 5; set opacity to 50%; save to output


    # Indicates that the process has started.
    gimp.progress_init("Opening '" + file + "'...")

    try:
        # Open file.
        fileImage = None
        fileImage = pdb.gimp_file_load(infile, infile, run_mode=RUN_NONINTERACTIVE)

        #resize
        resizedImage = pdb.gimp_image_scale(fileImage, 64, 64)
        layer = resizedImage.layers[0]

        # Create new layer.
        newLayer = gimp.Layer(resizedImage, "Shadow", layer.width, layer.height, layer.type, layer.opacity, layer.mode)
        # the +1 adds it behind the top layer
        resizedImage.add_layer(newLayer, +1)

        # Put image into the new layer.
        pdb.gimp_edit_copy(layer)
        floating = pdb.gimp_edit_paste(newLayer, True)

        # Update the new layer.
        newLayer.flush()
        newLayer.merge_shadow(True)
        newLayer.update(0, 0, newLayer.width, newLayer.height)
        # floating to layer
        pdb.gimp_floating_sel_to_layer(floating)

        #make layer black
        pdb.gimp_brightness_contrast(newLayer, -127, 127)

        #move the layer
        pdb.gimp_layer_set_offsets(newLayer, x_offset, y_offset)

        #set opacity
        pdb.gimp_layer_set_opacity(newLayer, 50)
        flattened = pdb.gimp_image_flatten(resizedImage)

        # Export flattened image
        target = outputFolder + "/" + filename + "s.png"
        pdb.file_png_save_defaults(run_mode=RUN_NONINTERACTIVE, resizedImage, flattened, target, target)


    except Exception as err:
        gimp.message("Unexpected error: " + str(err))



def run(directory):
        start=time.time()
        print "Running on directory \"%s\"" % directory

        for infile in glob.glob(os.path.join(directory, '*.png')):
                process(infile)
        end=time.time()
        print "Finished, total processing time: %.2f seconds" % (end-start)


if __name__ == "__main__":
        print "Running as __main__ with args: %s" % sys.argv
