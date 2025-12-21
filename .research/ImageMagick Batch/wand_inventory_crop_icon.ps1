<#
.SYNOPSIS
    This script will pad, then crop images of a magic wand intended for display in an Infinity Engine inventory
.DESCRIPTION
    This script will open *.png files in `DirInput`, cropping images in the directory and resizing their canvas to yield an image suitable for icon display in inventory screen (without a shadow) and emit them into the `DirOutput` directory
.INPUTS
    The inputs are expected to be 80x80 resolution *.png files
.OUTPUTS
    The outputs will be 64x64 resolution *.png files with padded upper-left corners to have some small margin
.PARAMETER DirInput
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutput
    The path to the directory where final output should reside
.PARAMETER PaddingTopLeft
    The padding to be added to the upper-left corner of the image
.PARAMETER PaddingBottomRight
    The padding to be added to the bottom-right corner of the image
.EXAMPLE
    C:\Work\BAM>'.\wand_inventory_crop_icon.ps1'
    >>> -DirInput 'C:\Work\Bam\Input\Todo\'
    >>> -DirOutput 'C:\Work\Bam\Output\'
    >>> -PaddingTopLeft 8
    >>> -PaddingBottomRight 4
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
    [string]$PaddingTopLeft,

    [Parameter(Mandatory)]
    [string]$PaddingBottomRight
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

    $cropBeforePadding = (64 - $PaddingTopLeft) - $PaddingBottomRight
    $canvasUpperLeft = "$($cropBeforePadding)x$($cropBeforePadding)"
    $cropAfterPadding = 64 - $PaddingBottomRight
    $canvasBottomRight = "$($cropAfterPadding)x$($cropAfterPadding)"

    Write-Host "Padding (Upper-Left):    $PaddingTopLeft" -ForegroundColor Yellow
    Write-Host "Padding (Bottom-Right):  $PaddingBottomRight" -ForegroundColor Yellow
    Write-Host "First Canvas:            $canvasUpperLeft" -ForegroundColor Yellow
    Write-Host "Second Canvas:           $canvasBottomRight" -ForegroundColor Yellow

    foreach ($file in $pngFiles)
    {
        Write-Host "Working on file: $file ..." -ForegroundColor Green

        #invoke PS-BAM


        $params = @(
            "`"$($file.FullName)`""
            "-strip"    #try to get rid of the "RGB color space not permitted on grayscale PNG" warning
            "-type", "TrueColorAlpha",  #Set back to RGB because
            "-background", "none",
            "-trim",    #crop away whitespace
            "+repage",  #re-set the virtual canvas to the trimmed area
            "-gravity", "NorthWest",
            "-crop", "$canvasUpperLeft+0+0",
            "+repage",  #re-set the virtual canvas to the cropped area
            "-gravity", "SouthEast",
            "-extent", "$canvasBottomRight",
            "+repage",  #re-set the virtual canvas to the trimmed area
            "-gravity", "NorthWest",
            "-extent", "64x64",
            "+repage",  #re-set the virtual canvas to the trimmed area
            "-colors", "255",
            "`"$DirOutput\$($file.BaseName)-i.png`""
        )

        Invoke-Command -program $magickExe.Path -arguments $params -waitForExit $true
    }

    $end = Get-Date

    $duration = $end - $start

    Write-Host "Script duration: $duration ..." -ForegroundColor Yellow
}

Main
