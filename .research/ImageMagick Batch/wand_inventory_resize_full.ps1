<#
.SYNOPSIS
    This script will crop and resize an image of a magic wand intended for display in an Infinity Engine inventory
.DESCRIPTION
    This script will open *.png files in `DirInput`, cropping and resizing images in the directory intending to yield an image suitable for full display in inventory screen (without a shadow) and emit them into the `DirOutput` directory
.INPUTS
    The inputs are expected to be *.png files
.OUTPUTS
    The outputs will be 80x80 resolution *.png files (no shadows)
.PARAMETER DirInput
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutput
    The path to the directory where final output should reside
.PARAMETER Dimension
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
    [string]$Dimension
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
            "`"$($file.FullName)`""
            "-background", "none",
            "-trim",
            "-resize", "$($Dimension)x$($Dimension)",
            "-gravity", "Center",
            "-extent", "$($Dimension)x$($Dimension)",
            "`"$DirOutput\$($file.Name)`""
        )

        Invoke-Command -program $magickExe.Path -arguments $params -waitForExit $true
    }

    $end = Get-Date

    $duration = $end - $start

    Write-Host "Script duration: $duration ..." -ForegroundColor Yellow
}

Main
