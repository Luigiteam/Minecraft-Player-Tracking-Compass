#Adding Objectives
scoreboard objectives add gameStart dummy
scoreboard objectives add startBuild dummy
scoreboard objectives add hitDetect minecraft.custom:damage_dealt

#Setting Fake PLayers
scoreboard players set #State gameStart 0
scoreboard players set #Build startBuild 0
scoreboard players set #Hit0 hitDetect 0

#Adds the team for taggers
team add taggers "Taggers"
team modify taggers color aqua

#Builds the Structure
execute if score #Build startBuild matches 0 run schedule function main:build 1t append

tellraw @a {"text":"Tag Loaded!","color":"#32e65c"}