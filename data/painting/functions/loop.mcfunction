### MAIN FUNCTION FILE (LOOPS EVERY GAMETICK) ###

######################### General ########################################

### No Ugly Chat
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

### Debug info
say YeEtz!

### Enable GetBrushes command
scoreboard players enable @a GetBrushes

execute as @a[scores={Sneak=0},nbt={SelectedItem:{id:"minecraft:stick",tag:{RedBrush:1b}}}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ red_wool unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ red_wool destroy
execute as @a[scores={Sneak=0},nbt={SelectedItem:{id:"minecraft:stick",tag:{BlueBrush:1b}}}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ blue_wool unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ blue_wool destroy
execute as @a[scores={Sneak=0},nbt={SelectedItem:{id:"minecraft:stick",tag:{GreenBrush:1b}}}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ green_wool unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ green_wool destroy
execute as @a[scores={Sneak=0},nbt={SelectedItem:{id:"minecraft:stick",tag:{YellowBrush:1b}}}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ yellow_wool unless block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ yellow_wool destroy

execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Red Brush","color":"red","italic":false}'},CustomModelData:1,RedBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Blue Brush","color":"blue","italic":false}'},CustomModelData:2,BlueBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Green Brush","color":"green","italic":false}'},CustomModelData:3,GreenBrush:1b,Enchantments:[{}]} 1
execute as @a[gamemode=creative,scores={GetBrushes=1}] run give @s stick{display:{Name:'{"text":"Yellow Brush","color":"yellow","italic":false}'},CustomModelData:4,YellowBrush:1b,Enchantments:[{}]} 1

execute as @a[gamemode=survival,scores={GetBrushes=1}] run tellraw @s ["",{"text":"Sorry, this command is Creative mode only","color":"red"}]


execute as @a[scores={GetBrushes=1}] run scoreboard players set @s GetBrushes 0
scoreboard players set @a[scores={Sneak=1..}] Sneak 0