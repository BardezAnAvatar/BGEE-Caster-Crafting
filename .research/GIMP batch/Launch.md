Launch Gimp.

This doesn't work well from Gimp console. Dunno why.

Place script in: `C:\Users\_name_\AppData\Roaming\GIMP\2.10\plug-ins`


Go to Filters > Python-fu > Console

Enter: `import sys;sys.path=[gimp.directory+'/plug-ins']+sys.path;import ie_inventory_shadow;`

Execute with: `ie_inventory_shadow.run('C:/temp/BAM/in', '5', '4', 'C:/temp/BAM/out')`
