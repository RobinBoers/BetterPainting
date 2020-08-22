### LOAD FUNCTION FILE (RUNS WHEN DATAPACK IS LOADED) ###

#@@@@ Info @@@@#

scoreboard objectives add GetBrushes trigger
scoreboard players enable GetBrushes

tellraw @a ["",{"text":"========================\n"},{"text":"Thanks for installing the\nBetterPainting datapack!","color":"red"},{"text":"\n\n"},{"text":"How to use:","color":"gold"},{"text":"\n"},{"text":"- Get a brush\n- Make sure you have the right color wool\nin your inventory\n- Hold the brush in your hand","color":"green"},{"text":"\n\n"},{"text":"Brushes are obtained trough loot in chests, or\n(for creative mode use) by typing /trigger GetBrushes","color":"red"},{"text":"\n========================"}]
