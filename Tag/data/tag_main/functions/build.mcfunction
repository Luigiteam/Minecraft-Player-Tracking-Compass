execute at @r run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["builder"],Invulnerable:1b}

execute at @e[tag=builder] run setblock ~ ~100 ~ structure_block{name:"tag_main:start",mode:"LOAD",posY:0,powered:1b}

kill @e[tag=builder]

scoreboard players set #Build startBuild 1