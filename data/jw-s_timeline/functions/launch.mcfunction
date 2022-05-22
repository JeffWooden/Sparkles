#> jw-s_timeline:launch
tellraw @a[tag=debug-tellraw] "jw-s_timeline:launch"
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

#   Ajout des tags
tag @s add jw-s_timeline
#   Initialisation des nbt
data modify entity @s data.temp set from entity @s data.timeline
execute store result score @s jw-s_fuse run data get entity @s data.temp[0].delay
execute as @s[scores={jw-s_fuse=..0}] run function jw-s_timeline:next