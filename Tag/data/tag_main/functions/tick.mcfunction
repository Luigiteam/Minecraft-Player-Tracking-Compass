team join taggers @a[tag=tagger]

execute if score #State gameStart matches 1 run effect give @a[tag=tagger] glowing 0 0 true

execute as @a[tag=tagger] if score @s hitDetect > #Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap

scoreboard players set @a hitDetect 0

team leave @e[tag=!tagger]