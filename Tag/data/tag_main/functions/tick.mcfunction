#This is to teleport all players to the start structure when the game is not ready
execute if score #State gameStart matches 0 as @e[tag=Spawn] run tp @a[distance=9..] @s

execute if score #State gameStart matches 1 run effect give @a[tag=tagger] glowing 0 0 true

execute as @a[tag=tagger] if score @s hitDetect > #Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap

scoreboard players set @a hitDetect 0

#Builds the Structure
execute if score #Build startBuild matches 0 run schedule function main:build 1t append

#This adds to the Runner's timer
execute if score #Timer gameTimer < #EndTimer gameTimer run scoreboard players add #Timer gameTimer 1

##This checks if the runners are done running
execute if score #Timer gameTimer >= #EndTimer gameTimer run function tag_main:winners