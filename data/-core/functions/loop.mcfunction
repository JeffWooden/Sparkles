execute if score a fire matches 1 run function -core:ct

execute as @e[tag=fw] store result score @s fireL run data get entity @s Life
execute as @e[tag=fw] if score @s fireL >= @s fireLF run function -core:bdb/check
execute as @e[tag=fw,tag=sphere] if score @s fireL >= @s fireLF run function -core:sphere/init

scoreboard players add @e[tag=fw.bdb_sub] fireL 1
execute as @e[tag=fw.bdb_sub] at @s run tp @s ^ ^ ^0.1
execute at @e[tag=fw.bdb_sub,tag=trail] run particle flame ~ ~ ~ 0 0 0 0.02 1 force @a
execute as @e[tag=fw.bdb_sub] at @s if score @s fireL >= @s fireLF run function -core:bdb/explode

scoreboard players add @e[tag=fw.fountain] fireL 1
execute as @e[tag=fw.fountain] if score @s fireL >= @s fireD at @s run function -core:type/fountain_tick
execute as @e[tag=fw.fountain_sub] run function -core:type/fountain_sub_tick

execute as @e[tag=fw.comet] run function -core:particles
execute as @e[tag=fw.comet] run function -core:type/comet_tick
execute at @e[tag=fw.comet] run particle flame ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..500,tag=!fps]

execute as @e[tag=fw.sphere_sub] run function -core:particles
execute as @e[tag=fw.sphere_sub] at @s run tp @s ^ ^ ^0.25
#execute at @e[tag=fw.sphere_sub] run particle flame ~ ~ ~ 0 0 0 0.02 1 force @a