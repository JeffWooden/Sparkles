execute if data entity @s ArmorItems[2].tag.fw run summon firework_rocket ~ ~ ~ {lifetime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[]}}},Tags:["fw.bdb_explo","init"]}
data modify entity @e[tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] FireworksItem.tag.Fireworks.Explosions set from entity @s ArmorItems[2].tag.fw.explosion
data modify entity @e[tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] LifeTime set from entity @s ArmorItems[2].tag.fw.lifetime
data modify entity @e[tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] Tags append from entity @s ArmorItems[2].tag.fw.type
data modify entity @e[tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] Tags append from entity @s ArmorItems[2].tag.fw.type

data modify entity @e[tag=sphere,tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] FireworksItem.tag.Particle set from entity @s ArmorItems[2].tag.fw.particle
data modify entity @e[tag=sphere,tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] FireworksItem.tag.Count set from entity @s ArmorItems[2].tag.fw.count
data modify entity @e[tag=sphere,tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] FireworksItem.tag.Lifetime set from entity @s ArmorItems[2].tag.fw.sphere_lifetime
execute as @e[tag=sphere,tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] at @s run function -core:sphere/init

execute as @s at @s if data entity @s ArmorItems[2].tag.fw.bdb run function -core:bdb/init
tag @e[tag=fw.bdb_explo,tag=init,limit=1,sort=nearest] remove init
kill @s[type=!player]

#{Fly} | $c{Y}