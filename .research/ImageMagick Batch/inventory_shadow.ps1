<#
.SYNOPSIS
    This script will crop and resize an image of a magic wand intended for display in an Infinity Engine inventory
.DESCRIPTION
    This script will open *.png files in `DirInput`, copying the image to a black and transparent underlying layer, and making it into a shadow, to yield an image suitable for full display in inventory screen and emit them into the `DirOutput` directory
.INPUTS
    The inputs are expected to be *.png files that represent the full display of an item (while picked up or floating)
.OUTPUTS
    The outputs will be 80x80 resolution *.png files (no shadows)
.PARAMETER DirInput
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutput
    The path to the directory where final output should reside
.PARAMETER OffsetX
    The target dimension for the canvas of the image after it is cropped and resized. e.g.: target 64x64 using 64, 80x80 using 80, etc.
.PARAMETER OffsetY
    The target dimension for the canvas of the image after it is cropped and resized. e.g.: target 64x64 using 64, 80x80 using 80, etc.
.EXAMPLE
    C:\Work\BAM>'.\wand_inventory_resize_full.ps1'
    >>> -DirInput 'C:\Work\Bam\Input\Todo\'
    >>> -DirOutput 'C:\Work\Bam\Output\'
    >>> -Dimension 64
    <This will open up all the *.png files in -DirInputPng, create a BAM-D for them then convert/compress that BAM
    using PS BAM>
.NOTES
    Author: Bardez
    Date:   August 14, 2024
    Requires ImageMagick to be installed
.LINK
    https://imagemagick.org/
#>

param(
    [Parameter(Mandatory)]
    [string]$DirInput,

    [Parameter(Mandatory)]
    [string]$DirOutput,

    [Parameter(Mandatory)]
    [string]$OffsetX,

    [Parameter(Mandatory)]
    [string]$OffsetY
)


function Invoke-Command()
{
    param
    (
        [string]$program = $(throw "Please specify a program" ),
        [array]$arguments,
        [switch]$waitForExit
    )

    Write-Host "Executing: ``$program $arguments`` ..." -ForegroundColor Magenta

    & $program $arguments
}

Function Main
{
    $start = Get-Date

    Write-Host "Finding files ..." -ForegroundColor red

    #iterate through all of the input DIR PNGs
    $pngFiles = Get-ChildItem $DirInput -Filter *.png
    $magickExe = Get-Command "magick"
    foreach ($file in $pngFiles)
    {
        Write-Host "Working on file: $file ..." -ForegroundColor Green

        #invoke PS-BAM
        $params = @(
            "`"$($file.FullName)`"",

            "(",
                "+clone",
                "-shadow", "50x0+$($OffsetX)+$($OffsetY)",
            ")",
            "+swap", #move my parenthetical to the back
            "-background", "none",
            "-layers", "merge",
            "+repage",  #resize my canvas viewport to my layers

            #"'('",
            #    "+clone",
            #    "-background", "none",
            #    "-alpha", "extract",
            #    "-threshold", "0",
            #    "-negate",
            #    "-strip"    #try to get rid of the "RGB color space not permitted on grayscale PNG" warning
            #    "-type", "TrueColorAlpha",  #Set back to RGB because
            #    "-transparent", "white",
            #    "-channel", "Alpha",    #This will set my Alpha transparency on all of it to 50%
            #        "-evaluate", "subtract", "50%",
            #"')'",

            "`"$DirOutput\$($file.Name)`""
        )

        Invoke-Command -program $magickExe.Path -arguments $params -waitForExit $true
    }

    $end = Get-Date

    $duration = $end - $start

    Write-Host "Script duration: $duration ..." -ForegroundColor Yellow
}

Main
