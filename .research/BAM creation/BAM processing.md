Use my GIMP processing script to generate all of the PNG files.

use a powershell script to iterate through an input directory, and generate input:

- generate a BAMD for Bammer
- use the input frame(s) to generate a BAM
- Pass that BAM over to PS BAM to shrink

NOTE: Apparently PS-BAM can read BAM-D files and generate them directly. Neato. Dunno if I want to rewrite my script quite that much, yet



To execute my script locally:

```
 .\scroll_bam_generation.ps1 -Bammer "C:\Projects\Game Mods\Baldur's Gate\Tools\bammer\bammer.exe" -PsBam "C:\Projects\Game Mods\Baldur's Gate\Tools\PS-BAM\PS BAM_x64.exe" -RolledFrame "C:\temp\BAM\out\bammer\bammer_000.png" -DirInputPng "C:\temp\BAM\in" -DirOutputTemp "C:\temp\BAM\intermediate" -DirOutputBam "C:\temp\BAM\out"
```
