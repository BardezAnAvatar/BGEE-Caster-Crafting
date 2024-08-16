<#
.SYNOPSIS
    This script will pad, then crop images of a magic wand intended for display in an Infinity Engine inventory
.DESCRIPTION
    This script will open *.png files in `DirInput`, cropping images in the directory and resizing their canvas to yield an image suitable for icon display in inventory screen (without a shadow) and emit them into the `DirOutput` directory
.INPUTS
    The inputs are expected to be sketchified high-resolution *.png files
.OUTPUTS
    The outputs will be restricted to 240 height/width resolution *.png files maintaining original aspect ratio, with decimated color palette
.PARAMETER DirInput
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutput
    The path to the directory where final output should reside
.EXAMPLE
    C:\Work\BAM>'.\description_image.ps1'
    >>> -DirInput 'C:\Work\Bam\Input\Todo\'
    >>> -DirOutput 'C:\Work\Bam\Output\'
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
    [string]$DirOutput
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
    $size = 80 + $Padding
    $dimensions = "$($size)x$($size)"
    $cropSquare = 64 - $Padding
    $sourceCropSquare = "$($cropSquare)x$($cropSquare)"

    Write-Host "Padding:           $($Padding)" -ForegroundColor Yellow
    Write-Host "Target Dimensions: $($dimensions)" -ForegroundColor Yellow

    foreach ($file in $pngFiles)
    {
        Write-Host "Working on file: $file ..." -ForegroundColor Green

        #invoke PS-BAM


        $params = @(
            "`"$($file.FullName)`""
            "-strip"    #try to get rid of the "RGB color space not permitted on grayscale PNG" warning
            "-type", "TrueColorAlpha",  #Set back to RGB because
            "-resize", "240x240",
            "-trim",    #crop away whitespace
            "+repage",  #re-set the virtual canvas to the trimmed area
            "`"$DirOutput\$($file.BaseName)-d.png`""
        )

        Invoke-Command -program $magickExe.Path -arguments $params -waitForExit $true
    }

    $end = Get-Date

    $duration = $end - $start

    Write-Host "Script duration: $duration ..." -ForegroundColor Yellow
}

Main
