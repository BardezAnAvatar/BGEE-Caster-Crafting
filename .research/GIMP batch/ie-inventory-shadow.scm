(define
    (ie-inventory-shadow filename offset_x, offset_y)
    (let*   (
                (car (icon (gimp-file-load RUN-NONINTERACTIVE filename filename)))
                (drawable (car (gimp-image-get-active-layer image)))
            )
            (plug-in-unsharp-mask   RUN-NONINTERACTIVE
                                    image drawable radius amount threshold)
            (gimp-file-save RUN-NONINTERACTIVE image drawable filename filename)
            (gimp-image-delete image)
    )
)
