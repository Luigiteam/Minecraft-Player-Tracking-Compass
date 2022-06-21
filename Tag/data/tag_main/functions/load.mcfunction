# Adding Objectives
scoreboard objectives add gameStart dummy

scoreboard objectives add hitDetect minecraft.custom:damage_dealt

scoreboard objectives add startBuild dummy

scoreboard objectives add gameTimer dummy

scoreboard objectives add Numbers dummy

# Setting Fake PLayers
scoreboard players set State gameStart 0

scoreboard players set Hit0 hitDetect 0

scoreboard players set Build startBuild 0

scoreboard players set Timer gameTimer 0
scoreboard players set EndTimer gameTimer 600
scoreboard players set TimerMin gameTimer 100

scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set Two Numbers 3
scoreboard players set Three Numbers 2
scoreboard players set SpeedTimer Numbers 50

# Adds the teams

team add taggers "Taggers"
team modify taggers color aqua

## team Runners
team add runner "Runners"
team modify runner color green

tellraw @a {"text":"Tag Loaded!","color":"32e65c"}