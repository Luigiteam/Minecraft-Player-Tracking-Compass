# Pre-Game
execute at @e[tag=Spawn] run worldborder center ~ ~
worldborder set 300 0
execute if score State gameStart matches 0 at @e[tag=Spawn] run tp @a[distance=9..] ~ ~2 ~
execute if score State gameStart matches 0 run gamemode adventure @a
execute if score State gameStart matches 0 run team join neutral @a

# This makes the powerups glow in their color
team join Red @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}]

# This is some tagger stuff
execute if score State gameStart matches 1 run effect give @a[tag=tagger] glowing 1 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run data merge entity @s {Glowing:1b}

execute as @a[tag=tagger] if score @s hitDetect > Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap
scoreboard players set @a hitDetect 0

# This adds to the Runner's timer
execute if score State gameStart matches 1 if score Timer gameTimer < EndTimer gameTimer run scoreboard players add Timer gameTimer 1

# This checks for the timer of taggers so they can get speed after 10 seconds (50 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute if score State gameStart matches 1 if score PowerupTimer gameTimer < PowerupCooldown Numbers run scoreboard players add PowerupTimer gameTimer 1
execute if score PowerupTimer gameTimer >= PowerupCooldown Numbers run function tag_main:powerups

execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer < SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= LastRound gameTimer run effect give @s speed 1 2 true

# This checks if an item is over water
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] at @s if block ~ ~-1 ~ minecraft:water run effect give @s levitation 5 2 true

# This repeats fireworks over powerups if they have not been not picked up

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer >= EndTimer gameTimer run function tag_main:winners