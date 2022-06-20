# Part 1 Stone
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:stone run scoreboard players set @s anvilBlock 1
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=..1}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","Stone"]}

execute at @e[tag=Stone] run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:stone
execute at @e[tag=Stone] run particle minecraft:block minecraft:stone ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=Stone] run playsound block.stone.break block @a ~ ~ ~ 100

# Part 2 Deepslate
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:deepslate run scoreboard players set @s anvilBlock 2
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=2}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","Deepslate"]}

execute at @e[tag=Deepslate] run fill ~ ~ ~ ~ ~ ~ minecraft:cobbled_deepslate replace deepslate
execute at @e[tag=Deepslate] run particle minecraft:block minecraft:deepslate ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=Deepslate] run playsound block.deepslate.break block @a ~ ~ ~ 100

# Part 3 Stone Bricks
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:stone_bricks run scoreboard players set @s anvilBlock 3
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=3}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","StoneBricks"]}

execute at @e[tag=StoneBricks] run fill ~ ~ ~ ~ ~ ~ minecraft:cracked_stone_bricks replace minecraft:stone_bricks
execute at @e[tag=StoneBricks] run particle minecraft:block minecraft:stone_bricks ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=StoneBricks] run playsound block.deepslate.break block @a ~ ~ ~ 100

# Part 4 Cracked Stone Bricks
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:cracked_stone_bricks run scoreboard players set @s anvilBlock 4
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=4}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","crackedStoneBricks"]}

execute at @e[tag=crackedStoneBricks] run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:cracked_stone_bricks
execute at @e[tag=crackedStoneBricks] run particle minecraft:block minecraft:cracked_stone_bricks ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=crackedStoneBricks] run playsound block.stone.break block @a ~ ~ ~ 100

# Part 5 Mossy Stone Bricks
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:mossy_stone_bricks run scoreboard players set @s anvilBlock 5
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=5}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","mossyStoneBricks"]}

execute at @e[tag=mossyStoneBricks] run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:mossy_stone_bricks
execute at @e[tag=mossyStoneBricks] run particle minecraft:block minecraft:mossy_stone_bricks ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=mossyStoneBricks] run playsound block.stone.break block @a ~ ~ ~ 100

# Part 6 Sponge
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:wet_sponge run scoreboard players set @s anvilBlock 6
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=6}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","wetSponge"]}

## This is for making the wet sponge into a normal sponge
execute at @e[tag=wetSponge] run fill ~ ~ ~ ~ ~ ~ minecraft:sponge replace minecraft:wet_sponge
execute at @e[tag=wetSponge] run particle minecraft:block minecraft:water ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=wetSponge] run playsound entity.player.swim block @a ~ ~ ~ 30 2

# Part 7 Deepslate Bricks
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:deepslate_bricks run scoreboard players set @s anvilBlock 7
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=7}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","DeepSlateBricks"]}

execute at @e[tag=DeepSlateBricks] run fill ~ ~ ~ ~ ~ ~ minecraft:cracked_deepslate_bricks replace minecraft:deepslate_bricks
execute at @e[tag=DeepSlateBricks] run particle minecraft:block minecraft:deepslate_bricks ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=DeepSlateBricks] run playsound block.deepslate.break block @a ~ ~ ~ 30 2

# Part 8 Nether Bricks
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-0.5 ~ minecraft:nether_bricks run scoreboard players set @s anvilBlock 8
execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},scores={anvilBlock=8}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["Watcher","NetherBricks"]}

execute at @e[tag=NetherBricks] run fill ~ ~ ~ ~ ~ ~ minecraft:cracked_nether_bricks replace minecraft:nether_bricks
execute at @e[tag=NetherBricks] run particle minecraft:block minecraft:nether_bricks ~ ~ ~ 0.5 0.5 0.5 1000 150
execute at @e[tag=NetherBricks] run playsound block.nether_bricks.break block @a ~ ~ ~ 30 2

# This kills all temperary armorstands
kill @e[tag=Watcher]