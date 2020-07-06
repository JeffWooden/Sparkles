summon armor_stand ~ ~ ~ {Tags:["fw.bdb_sub","init"],Invisible:1b,Rotation:[0.0f,0.0f],Marker:1b,ArmorItems:[{},{},{id:"minecraft:paper",Count:1b,tag:{}},{}]}

scoreboard objectives add ftemp dummy
scoreboard players set xmax ftemp 360
scoreboard players set ymax ftemp 180
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score xrand ftemp run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation xrand ftemp %= xmax ftemp
execute store result score yrand ftemp run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[1]
scoreboard players operation yrand ftemp %= ymax ftemp
scoreboard players remove yrand ftemp 90
kill @e[type=area_effect_cloud,tag=random]

execute store result entity @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get xrand ftemp
execute store result entity @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get yrand ftemp
scoreboard objectives remove ftemp

execute store result score @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] fireLF run data get entity @s FireworksItem.tag.bdb.lifetime
data modify entity @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] ArmorItems[2].tag.fw set from entity @s FireworksItem.tag.bdb.fw
execute if data entity @s FireworksItem.tag.bdb.trail run tag @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] add trail
tag @e[tag=fw.bdb_sub,tag=init,limit=1,sort=nearest] remove init

scoreboard players remove @s fireCnt 1
execute as @s at @s if score @s fireCnt matches 1.. run function -core:bdb/summon
