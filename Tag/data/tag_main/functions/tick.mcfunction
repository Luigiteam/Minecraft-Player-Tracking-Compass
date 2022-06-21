execute at @e[tag=Spawn] run worldborder center ~ ~
worldborder set 300 0
# This is to teleport all players to the start structure when the game is not ready
execute if score State gameStart matches 0 at @e[tag=Spawn] run tp @a[distance=9..] ~ ~ ~

execute if score State gameStart matches 1 run effect give @a[tag=tagger] glowing 1 0 true

execute as @a[tag=tagger] if score @s hitDetect > Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap

scoreboard players set @a hitDetect 0

# Builds the Structure
execute if score Build startBuild matches 0 run schedule function main:build 1t append

# This adds to the Runner's timer
execute if score State gameStart matches 1 if score Timer gameTimer < EndTimer gameTimer run scoreboard players add Timer gameTimer 1

# This checks for the timer of taggers so they can get speed after 10 seconds (50 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer < SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= LastRound gameTimer run effect give @s speed 1 2 true

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer >= EndTimer gameTimer run function tag_main:winners