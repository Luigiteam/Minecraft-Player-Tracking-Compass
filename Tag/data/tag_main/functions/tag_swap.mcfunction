tag @a[tag=tagger] add temp

execute as @a[tag=tagger] if score @s hitDetect > #Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[tag=!tagger,sort=nearest,limit=1,type=player] add tagger

tag @a[tag=temp] remove tagger