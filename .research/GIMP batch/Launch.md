This doesn't work well using Gimp.exe via console/cmd. Dunno why. Need to run via the UI console:

Place script in: `C:\Users\_name_\AppData\Roaming\GIMP\2.10\plug-ins`

1. Launch GIMP GUI
1. Go to Filters > Python-fu > Console

Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_resize;`
Resize:
- `ie_inventory_resize.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/potions/separated/exported', 'C:/temp/BAM/out')`


Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_resize_wands_full;`
Resize:
- `ie_inventory_resize_wands_full.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/wands/output/inventory', 'C:/temp/BAM/out')`

Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_resize_wands_inventory;`
Resize:
- `ie_inventory_resize_wands_inventory.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/wands/output/inventory', 'C:/temp/BAM/out')`


Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_shadow;`
Shadow:
- `ie_inventory_shadow.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/potions/separated/exported/BAM-Ready/inventory', '5', '4', 'C:/temp/BAM/out')`
- `ie_inventory_shadow.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/wands/output/inventory', '5', '2', 'C:/temp/BAM/out')`

Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_item_level_overlay`
overlay: `ie_item_level_overlay.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/scrolls/levelled/src/scrolls/Priest 6', 'C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/scrolls/levelled/overlay/Number', 'C:/temp/BAM/in')`
