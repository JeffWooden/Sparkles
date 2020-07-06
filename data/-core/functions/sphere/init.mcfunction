execute store result score @s fireCnt run data get entity @s FireworksItem.tag.Count
scoreboard objectives add ftemp dummy
scoreboard players set x ftemp 3600
scoreboard players operation x ftemp /= @s fireCnt
scoreboard players set y ftemp 3600
scoreboard players operation y ftemp /= @s fireCnt
data merge entity @s {Rotation:[0.0f,-90.0f]}

execute at @s as @a[distance=..100] run playsound minecraft:entity.firework_rocket.large_blast ambient @s ~ ~ ~ 10 0.7 0.1

scoreboard players set xmax ftemp 360
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score xrand ftemp run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUIDMost 0.0000000000000028306434
scoreboard players operation xrand ftemp %= xmax ftemp
kill @e[type=area_effect_cloud,tag=random]
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result entity @s Rotation[0] float 1 run scoreboard players get xrand ftemp
#summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["fw.sphere_sub","init"],Rotation:[0.0f,-90.0f]}
#@e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest]
scoreboard players add @s fireCnt 1
execute as @s at @s run function -core:sphere/summon
scoreboard objectives remove ftemp
