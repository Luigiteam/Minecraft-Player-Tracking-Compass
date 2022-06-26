execute at @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}
#
#
#

execute if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run schedule function tag_main:fireworks 10s

