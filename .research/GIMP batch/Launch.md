Launch Gimp.

This doesn't work well from Gimp console. Dunno why.

Place script in: `C:\Users\_name_\AppData\Roaming\GIMP\2.10\plug-ins`


Go to Filters > Python-fu > Console

Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_resize;`
Resize: `ie_inventory_resize.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/potions/separated/exported', 'C:/temp/BAM/out')`


Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_shadow;`
Shadow: `ie_inventory_shadow.run('C:/Projects/Game Mods/Baldur\'s Gate/Caster Crafting/.assets/potions/separated/exported/BAM-Ready/inventory', '5', '4', 'C:/temp/BAM/out')`
