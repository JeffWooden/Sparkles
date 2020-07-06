execute if entity @s[tag=!-] run summon area_effect_cloud ^ ^ ^0.1 {Duration:20,Tags:["fw.sphere_sub","init"]}
execute if entity @s[tag=-] run summon area_effect_cloud ^ ^ ^-0.1 {Duration:20,Tags:["fw.sphere_sub","init"]}
execute at @e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest] run tp @e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest] ~ ~ ~ facing entity @s 
data modify entity @e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest] Duration set from entity @s FireworksItem.tag.Lifetime
data modify entity @e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest] Tags append from entity @s FireworksItem.tag.Particle
tag @e[tag=fw.sphere_sub,tag=init,limit=1,sort=nearest] remove init

execute store result score newy ftemp run data get entity @s Rotation[1] 10
execute if entity @s[tag=!-] run scoreboard players operation newy ftemp += y ftemp
execute if entity @s[tag=-] run scoreboard players operation newy ftemp -= y ftemp
execute if score newy ftemp matches 900.. run tag @s add -
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get newy ftemp

execute store result score newx ftemp run data get entity @s Rotation[0]
execute if entity @s[tag=!-] run scoreboard players operation newx ftemp += x ftemp
execute if entity @s[tag=-] run scoreboard players operation newx ftemp -= x ftemp
execute store result entity @s Rotation[0] float 1 run scoreboard players get newx ftemp

scoreboard players remove @s fireCnt 1
execute as @s at @s if score @s fireCnt matches 0.. run function -core:sphere/summon
tag @s[tag=init] remove init