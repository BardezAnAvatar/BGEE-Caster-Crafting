This is a set of replacements for my GIMP processing scripts which sucked anyway.

1. Install [ImageMagick](https://imagemagick.org/)
1. Open Powershell


## Parameters
So for the wand heads, I want approximately 2/3 of the full icon to represent the Head and a bit of the shaft.
Thus, I want to render at 150% (3/2, inverse of 2/3), then crop to the 2/3 -- in this case 64x64
So 80x80 is 150% of 64x64
And 72x72 is 150% of 48x48
Ergo:
- For 64x64: use 80x80, crop to 64x64, use a padding of 8
- For 48x48: use 72x72, crop to 48x48, use a padding of 6
Note Further:


For each of the following stages:
## Render Full Icon
- `.\wand_inventory_resize_full.ps1 -DirInput 'C:\Work\Bam\Input\Todo\' -DirOutput 'C:\Work\Bam\Output\' -Dimension 64`
- `.\wand_inventory_resize_full.ps1 -DirInput "C:\Projects\Game Mods\Baldur's Gate\Caster Crafting\.assets\wands\output\render\inventory" -DirOutput "C:\temp\BAM\in" -Dimension 80`

## Render Wand Inventory Slot Icon
- `.\wand_inventory_crop_icon.ps1 -DirInput "C:\temp\BAM\in" -DirOutput "C:\temp\BAM\render\inventory" -PaddingTopLeft 8 -PaddingBottomRight 4`

## Render Floating / Picked Up Icon with Shadow
- `.\inventory_shadow.ps1 -DirInput "C:\temp\BAM\in" -DirOutput "C:\temp\BAM\render\float" -OffsetX 5 -OffsetY 2`
