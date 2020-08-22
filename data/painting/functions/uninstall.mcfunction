### UNINSTALL (RUN THIS TO REMOVE SCOREBOARD OBJECTIVE AND SUCH) ###
# RUNNING AS PLAYER WHO IS UNINSTALLING THE DATAPACK

#@@@@ Scoreboards @@@@#
scoreboard objectives remove GetBrushes
scoreboard objectives remove Sneak

#@@@@ Info @@@@#
tellraw @s ["",{"text":"========================\n"},{"text":"Thanks for using\nBetterPainting!","color":"red"},{"text":"\n\n"},{"text":"The datapack is succesfully\nuninstalled.","color":"gold"},{"text":"\n========================"}]