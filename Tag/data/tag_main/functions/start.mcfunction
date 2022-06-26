team leave @a

tag @a remove tagger

tag @r add tagger

scoreboard players set Timer gameTimer 0

scoreboard players operation SecondRound gameTimer = EndTimer gameTimer
scoreboard players operation SecondRound gameTimer /= Two Numbers

scoreboard players operation LastRound gameTimer = EndTimer gameTimer
scoreboard players operation LastRound gameTimer /= Three Numbers

team join taggers @a[tag=tagger]
team join runner @a[tag=!tagger]

execute at @e[tag=spawn] run spreadplayers ~ ~ 100 200 false @a

scoreboard players set State gameStart 1