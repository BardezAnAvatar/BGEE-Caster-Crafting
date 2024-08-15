This is a set of replacements for my GIMP processing scripts which sucked anyway.

1. Install [ImageMagick](https://imagemagick.org/)
1. Open Powershell

For each of the following stages:
## Render Full Icon
- `.\wand_inventory_resize_full.ps1 -DirInput 'C:\Work\Bam\Input\Todo\' -DirOutput 'C:\Work\Bam\Output\' -Dimension 64`
- `.\wand_inventory_resize_full.ps1 -DirInput "C:\Projects\Game Mods\Baldur's Gate\Caster Crafting\.assets\wands\output\render\inventory" -DirOutput "C:\temp\BAM\in" -Dimension 80`

## Render Wand Inventory Slot Icon
- `.\wand_inventory_crop_icon.ps1 -DirInput "C:\temp\BAM\in" -DirOutput "C:\temp\BAM\render\inventory" -Padding 8`

## Render Floating / Picked Up Icon with Shadow
- `.\inventory_shadow.ps1 -DirInput "C:\temp\BAM\in" -DirOutput "C:\temp\BAM\render\float" -OffsetX 5 -OffsetY 2`
