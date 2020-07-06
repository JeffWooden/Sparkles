scoreboard players reset @s fireL
summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["fw.fountain_sub","init"],Rotation:[0.0f,-90.0f]}
data modify entity @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] Particle set from entity @s Particle
execute as @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] run function -core:type/set_particle
execute store result entity @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] Duration int 1 run scoreboard players get @s fireLF

scoreboard objectives add ftemp dummy
scoreboard players set xmax ftemp 360
scoreboard players set ymax ftemp 22
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score xrand ftemp run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation xrand ftemp %= xmax ftemp
execute store result score yrand ftemp run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[1]
scoreboard players operation yrand ftemp %= ymax ftemp
kill @e[type=area_effect_cloud,tag=random]
scoreboard players remove yrand ftemp 90

execute store result entity @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get xrand ftemp
execute store result entity @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get yrand ftemp
scoreboard objectives remove ftemp

execute if entity @s[tag=gravity] run tag @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] add gravity
tag @e[tag=fw.fountain_sub,tag=init,limit=1,sort=nearest] remove init