execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["fw.fountain","init"]}
execute if data storage fw:cache Temp[0].gravity run tag @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] add gravity
data modify entity @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] Particle set from storage fw:cache Temp[0].particle
execute store result entity @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] Duration int 1 run data get storage fw:cache Temp[0].lifetime 1
execute store result score @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] fireLF run data get storage fw:cache Temp[0].height 10
execute store result score @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] fireD run data get storage fw:cache Temp[0].count
scoreboard players set @e[tag=fw.fountain,tag=init,limit=1,sort=nearest,scores={fireD=..0}] fireD 2
scoreboard players operation temp fire = #20 fire
scoreboard players operation temp fire /= @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] fireD
scoreboard players operation @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] fireD = temp fire
scoreboard players reset temp fire

execute at @s run tag @e[tag=fw.fountain,tag=init,limit=1,sort=nearest] remove init
kill @s[type=!player]