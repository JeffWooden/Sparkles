execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fw.comet","init"]}
data modify entity @e[tag=fw.comet,tag=init,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[tag=fw.comet,tag=init,limit=1,sort=nearest] Tags append from storage fw:cache Temp[0].particle
execute store result score @e[tag=fw.comet,tag=init,limit=1,sort=nearest] fireLF run data get entity @s LifeTime
tag @e[tag=fw.comet,tag=init,limit=1,sort=nearest] remove init
kill @s[type=!player]