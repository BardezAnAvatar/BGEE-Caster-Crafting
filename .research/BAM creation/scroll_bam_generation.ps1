<#
.SYNOPSIS
    This script will mix Infinity Engine scroll PNG files into best-compression BAM files
.DESCRIPTION
    This script will run through an input directory, joining `RolledFrame` and individual *.png files in `DirInputPng` via `Bammer`, which will be output to `DirOutputTemp`. Subsequently, all such *.BAM files will be iterated over in `DirOutputTemp` and compressed via `PsBam` executable and emitted into the `DirOutputBam` directory
.PARAMETER Bammer
    The path to the `Bammer` executable on disk.
    Acquire from: https://www.gibberlings3.net/forums/topic/34567-using-bammer-to-create-and-edit-bams/#comment-305963
.PARAMETER PsBam
    The path to the `PS BAM` executable on disk.
    Acquire from: https://github.com/Sampsca/PS-BAM
.PARAMETER RolledFrame
    The path to the PNG file on disk of a rolled-up scroll (the picked up frame in a scroll BAM)
.PARAMETER DirInputPng
    The path to the directory containing all of the PNG files to convert into BAMs
.PARAMETER DirOutputTemp
    The path to the directory where intermediate uncompressed BAMs can be stored
.PARAMETER DirOutputBam
    The path to the directory where final output should reside
.EXAMPLE
    C:\Work\BAM>'.\scroll_bam_generation.ps1'
    >>> -Bammer 'C:\bin\bammer\bammer.exe'
    >>> -PsBam 'C:\bin\psbam\psbam.exe'
    >>> -RolledFrame 'C:\Work\Bam\Input\RolledScroll.png'
    >>> -DirInputPng 'C:\Work\Bam\Input\Todo\'
    >>> -DirOutputTemp 'C:\Work\Bam\Temp\'
    >>> -DirOutputBam 'C:\Work\Bam\Output\'
    <This will open up all the *.png files in -DirInputPng, create a BAM for them using the bammer executable, then compress that BAM
    using PS BAM>
.NOTES
    Author: Bardez
    Date:   December 26, 2023
#>
param(
    [Parameter(Mandatory)]
    [string]$Bammer,

    [Parameter(Mandatory)]
    [string]$PsBam,

    [Parameter(Mandatory)]
    [string]$RolledFrame,

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
        [string]$RolledFrame,

        [Parameter(Mandatory)]
        [string]$SpellFrame,

        [Parameter(Mandatory)]
        [string]$RolledCenterX,

        [Parameter(Mandatory)]
        [string]$RolledCenterY
    )

    $bamd =@"
frame f00000 `"$RolledFrame`" $RolledCenterX $RolledCenterY
frame f00001 `"$SpellFrame`" 0 0

sequence f00000 f00001
"@

    return $bamd
}

Function GenerateBam
{
    param(
        [Parameter(Mandatory)]
        [string]$PathBammer,

        [Parameter(Mandatory)]
        [string]$DirOutput,

        [Parameter(Mandatory)]
        [string]$RolledFrame,

        [Parameter(Mandatory)]
        [string]$SpellFrame,

        [Parameter(Mandatory)]
        [string]$BamName
    )

    #Get the BAM-D content
    $bamd = GenerateBamD $RolledFrame $SpellFrame 20 15
    $bamd = $bamd.Replace("\", "/") #apparently Bammer needs this syntax?

    #Write the file
    Set-Content -Path "$DirOutput\temp.bamd" -Value $bamd

    #Invoke Bammer
    $params = @(
        "-input", "`"$DirOutput\temp.bamd`"",
        "-output", "`"$DirOutput\$BamName`""
        )
    & $PathBammer $params
}

#this function will take a file in the temp dir and compress it using PS-BAM
Function CompressBam
{
    param(
        [Parameter(Mandatory)]
        [string]$PathPsBam,

        [Parameter(Mandatory)]
        [string]$DirInput,

        [Parameter(Mandatory)]
        [string]$DirOutput,

        [Parameter(Mandatory)]
        [string]$BamName
    )

    #invoke PS-BAM
    $params = @(
        "--CompressionProfile", "`"Recommended`"",
        "--DebugLevelL", "1",
        "--DebugLevelP", "2",
        "--DebugLevelS", "1",
        "--LogFile", "`"$DirOutput\$BamName.log`"",
        "--OutPath", "`"$DirOutput`"",
        "--Save", "`"BAM`"",
        "`"$DirInput\$BamName`""
        )
    & $PathPsBam $params
}

Function Main
{
    Write-Host "Generating BAMs ..." -ForegroundColor red

    #iterate through all of the input DIR PNGs
    $pngFiles = Get-ChildItem $DirInputPng -Filter *.png
    foreach ($file in $pngFiles)
    {
        $bamName = "$($file.Basename).BAM"

        Write-Host "Generating $bamName from $file ..." -ForegroundColor blue
        #generate BAM
        GenerateBam -PathBammer $Bammer -DirOutput $DirOutputTemp -RolledFrame $RolledFrame -SpellFrame $file.FullName -BamName $bamName
    }

    Write-Host "Optimizing BAMs ..." -ForegroundColor red

    #iterate through all temp dir BAMs
    $bamFiles = Get-ChildItem $DirOutputTemp -Filter *.BAM
    foreach($file in $bamFiles)
    {
        Write-Host "Optimizing $bamName ..." -ForegroundColor orange
        #compress BAM
        CompressBam -PathPsBam $PsBam -DirInput $DirOutputTemp -DirOutput $DirOutputBam -BamName $file.Name

        #this locked up my processor and OS, so... WAIT
        Start-Sleep -Milliseconds 20
    }
}

Main
