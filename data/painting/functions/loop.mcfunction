### MAIN FUNCTION FILE (LOOPS EVERY GAMETICK) ###

######################### General ########################################

### No Ugly Chat
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

### Debug info
say YeEtz!

### Enable GetBrushes command
scoreboard players enable @a GetBrushes

execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{RedBrush:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ red_wool destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{BlueBrush:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ blue_wool destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{GreenBrush:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ green_wool destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{YellowBrush:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ yellow_wool destroy

execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Red Brush","color":"red","italic":false}'},CustomModelData:0001,RedBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Blue Brush","color":"blue","italic":false}'},CustomModelData:0002,BlueBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Green Brush","color":"green","italic":false}'},CustomModelData:0003,GreenBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Yellow Brush","color":"yellow","italic":false}'},CustomModelData:0004,YellowBrush:1b,Enchantments:[{}]} 1

execute as @a[scores={GetBrushes=1}] run scoreboard players set @s GetBrushes 0