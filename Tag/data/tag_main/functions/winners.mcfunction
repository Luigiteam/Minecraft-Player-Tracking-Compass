scoreboard players set State gameStart 2

execute at @a[tag=!tagger] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;2651799,4312372],FadeColors:[I;14188952,15435844]}],Flight:1}}}}

tellraw @p ["","The winners are ",{"selector":"@a[tag=!tagger]","color":"gold"}]