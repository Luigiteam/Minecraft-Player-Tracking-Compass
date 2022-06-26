# This summons 4 armor stands and selects them randomly for the powerup to spawn
execute as @r run tag @s add posTemp

execute at @a[tag=posTemp] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS1]}
execute at @a[tag=posTemp] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS2]}
execute at @a[tag=posTemp] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS3]}
execute at @a[tag=posTemp] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS4]}

execute at @e[tag=POS1] run tag @e[distance=..1,sort=random,limit=1,type=armor_stand] add positioned

execute at @a[tag=posTemp] run tp @e[tag=POS1] ~50 ~ ~50
execute at @a[tag=posTemp] run tp @e[tag=POS2] ~-50 ~ ~50
execute at @a[tag=posTemp] run tp @e[tag=POS3] ~-50 ~ ~-50

# This picks which powerup is choosen
#execute at @e[tag=Spawn] run tag @e[tag=!Spawn,distance=..9,sort=random,limit=1] add choosen
tag @e[tag=Random_1] add choosen

execute if entity @e[tag=Random_1,tag=choosen] run scoreboard players set Type Powerup 1
execute if entity @e[tag=Random_2,tag=choosen] run scoreboard players set Type Powerup 2
execute if entity @e[tag=Random_3,tag=choosen] run scoreboard players set Type Powerup 3
execute if entity @e[tag=Random_4,tag=choosen] run scoreboard players set Type Powerup 4

# This is when the powerup and Firework spawns
scoreboard players set Type Powerup 1
execute if score Type Powerup matches 1 at @e[tag=positioned] run summon item ~ 280 ~ {Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"knockback",lvl:5}]}}}
execute if score Type Powerup matches 1 at @e[tag=positioned] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

# This starts the cooldown and kill the position armorstands
scoreboard players set PowerupTimer gameTimer 0

kill @e[tag=POS1]
kill @e[tag=POS2]
kill @e[tag=POS3]
kill @e[tag=POS4]
