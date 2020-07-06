execute store result entity @s LifeTime int 1 run data get storage fw:cache Temp[0].lifetime
execute store result score @s fireLF run data get entity @s LifeTime
data modify entity @s FireworksItem.tag.Fireworks.Explosions set from storage fw:cache Temp[0].explosion
data modify entity @s FireworksItem.tag.bdb set from storage fw:cache Temp[0].bdb
data modify entity @s Motion set from storage fw:cache Temp[0].motion
data modify entity @s Tags append from storage fw:cache Temp[0].type

execute as @s[tag=fountain] at @s run function -core:type/fountain
execute as @s[tag=comet] at @s run function -core:type/comet
execute as @s[tag=sphere] at @s run function -core:type/sphere
kill @s[tag=delay]

tag @s remove init