execute store result score ct fire run data get storage fw:cache Temp[0].delay

execute at @e[tag=fw.spawnpoint,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["fw.setspawn"]}
scoreboard objectives add ftemp dummy
execute store result score x ftemp run data get entity @e[tag=fw.spawnpoint,limit=1] Pos[0] 10
execute store result score x2 ftemp run data get storage fw:cache Temp[0].pos[0] 10
scoreboard players operation x ftemp += x2 ftemp

execute store result score y ftemp run data get entity @e[tag=fw.spawnpoint,limit=1] Pos[1] 10
execute store result score y2 ftemp run data get storage fw:cache Temp[0].pos[1] 10
scoreboard players operation y ftemp += y2 ftemp

execute store result score z ftemp run data get entity @e[tag=fw.spawnpoint,limit=1] Pos[2] 10
execute store result score z2 ftemp run data get storage fw:cache Temp[0].pos[2] 10
scoreboard players operation z ftemp += z2 ftemp

execute store result entity @e[tag=fw.setspawn,limit=1] Pos[0] double 0.1 run scoreboard players get x ftemp
execute store result entity @e[tag=fw.setspawn,limit=1] Pos[1] double 0.1 run scoreboard players get y ftemp
execute store result entity @e[tag=fw.setspawn,limit=1] Pos[2] double 0.1 run scoreboard players get z ftemp
scoreboard objectives remove ftemp
execute at @e[tag=fw.setspawn,limit=1] run summon firework_rocket ~ ~ ~ {Tags:["fw","init"],LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[]}}}}
kill @e[tag=fw.setspawn]
execute as @e[tag=fw,tag=init,limit=1] at @s run function -core:transform

# remove first item from Show cache
data remove storage fw:cache Temp[0]
execute store result score l fire run data get storage fw:cache Temp