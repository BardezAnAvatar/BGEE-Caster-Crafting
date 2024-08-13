<#
.SYNOPSIS
    This script will mix Infinity Engine wand PNG files into best-compression BAM files
.DESCRIPTION
    This script will run through an input directory, joining individual *.png files in `DirInputPng` into BAM-D pseudo-script descriptive files which will be output to `DirOutputTemp`; these BAM-D files will be merged into BAM files via `psbam`; all such *.BAM files will be compressed via `PsBam` executable and emitted into the `DirOutputBam` directory
.PARAMETER PsBam
    The path to the `PS BAM` executable on disk.
    Acquire from: https://github.com/Sampsca/PS-BAM
.PARAMETER PostfixInventory
    The string post-fix of a filename indicating an inventory *.png file
.PARAMETER PostfixFloating
    The string post-fix of a filename indicating an carried/picked up/floating *.png file
.PARAMETER DirInputPng
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutputTemp
    The path to the directory where intermediate uncompressed BAMs can be stored
.PARAMETER DirOutputBam
    The path to the directory where final output should reside
.EXAMPLE
    C:\Work\BAM>'.\wand_bam_generation.ps1'
    >>> -PsBam 'C:\bin\psbam\psbam.exe'
    >>> -PostfixInventory '-i.png'
    >>> -PostfixFloating '-f.png'
    >>> -DirInputPng 'C:\Work\Bam\Input\Todo\'
    >>> -DirOutputTemp 'C:\Work\Bam\Temp\'
    >>> -DirOutputBam 'C:\Work\Bam\Output\'
    <This will open up all the *.png files in -DirInputPng, create a BAM-D for them then convert/compress that BAM
    using PS BAM>
.NOTES
    Author: Bardez
    Date:   August 12, 2024
#>
param(
    [Parameter(Mandatory)]
    [string]$PsBam,

    [Parameter(Mandatory)]
    [string]$PostfixInventory,

    [Parameter(Mandatory)]
    [string]$PostfixFloating,

    [Parameter(Mandatory)]
    [string]$DirInputPng,

    [Parameter(Mandatory)]
    [string]$DirOutputTemp,

    [Parameter(Mandatory)]
    [string]$DirOutputBam
)


# this function will generate BAM-D input/output
Function GenerateBamD
{
    param(
        [Parameter(Mandatory)]
        [string]$InventoryFrame,

        [Parameter(Mandatory)]
        [string]$FloatingFrame
    )

    $bamd =@"
frame f00000 `"$DirInputPng/$InventoryFrame`" 0 0
frame f00001 `"$DirInputPng/$FloatingFrame`" 0 0

sequence f00000 f00001
"@

    return $bamd
}

function Invoke-Command()
{
    param
    (
        [string]$program = $(throw "Please specify a program" ),
        [string]$argumentString = "",
        [switch]$waitForExit
    )

    $psi = new-object "Diagnostics.ProcessStartInfo"
    $psi.FileName = $program
    $psi.Arguments = $argumentString
    $proc = [Diagnostics.Process]::Start($psi)
    if ( $waitForExit )
    {
        $proc.WaitForExit();
    }
}

#this function will take a file in the temp dir and compress it using PS-BAM
Function GenerateBam
{
    param(
        [Parameter(Mandatory)]
        [string]$PathPsBam,

        [Parameter(Mandatory)]
        [string]$DirInput,

        [Parameter(Mandatory)]
        [string]$DirOutput,

        [Parameter(Mandatory)]
        [string]$BamdName
    )

    #invoke PS-BAM
    $params = @(
        "--CompressionProfile", "`"Recommended`"",
        "--DebugLevelL", "1",
        "--DebugLevelP", "2",
        "--DebugLevelS", "1",
        "--LogFile", "`"$DirOutput\$BamdName.log`"",
        "--OutPath", "`"$DirOutput`"",
        "--Save", "`"BAM`"",
        "`"$DirOutputTemp\$BamdName`""
        )

    $arguments = $params -join " "

    #debug
    #Write-Host $arguments

    Invoke-Command -program $PathPsBam -argumentString $arguments -waitForExit true
}

Function Main
{
    $start = Get-Date

    Write-Host "Generating BAM-Ds ..." -ForegroundColor red

    #iterate through all of the input DIR PNGs
    $filter = '*' + $PostfixInventory
    $pngFiles = Get-ChildItem $DirInputPng -Filter $filter
    foreach ($file in $pngFiles)
    {
        $baseName = ($file.Name).Replace($PostfixInventory, '')
        $floatingFile = ($file.Name).Replace($PostfixInventory, $PostfixFloating)

        $bamdName = "$($baseName).BAMD"

        Write-Host "Generating $bamdName from $file ..." -ForegroundColor blue

        #generate BAMD
        $bamdContent = GenerateBamD $file $floatingFile
        $bamdContent = $bamdContent.Replace("\", "/") #apparently Bammer needs this syntax?

        #Write the file
        Set-Content -Path "$($DirOutputTemp)\$($bamdName)" -Value $bamdContent
    }

    Write-Host "Optimizing BAMs ..." -ForegroundColor red

    #iterate through all temp dir BAMDs
    $bamdFiles = Get-ChildItem $DirOutputTemp | Where-Object { $_.Name -like "*.BAMD" }
    foreach($file in $bamdFiles)
    {
        $bamName = ($file.Name).Replace('.BAMD', '.BAM')

        Write-Host "Generating $bamName ..." -ForegroundColor Magenta

        #Generate BAM
        GenerateBam -PathPsBam $PsBam -DirInput $DirOutputTemp -DirOutput $DirOutputBam -BamdName $file

        #this locked up my processor and OS, so... WAIT
        Start-Sleep -Milliseconds 20
    }

    $end = Get-Date

    $duration = $end - $start

    Write-Host "Script duration: $duration ..." -ForegroundColor Yellow
}

Main
