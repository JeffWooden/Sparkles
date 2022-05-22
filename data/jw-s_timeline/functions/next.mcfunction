#> jw-s_timeline:next
tellraw @a[tag=debug-tellraw] "jw-s_timeline:next"
#@context as <?:timeline> at @s

#   Itération
##  Création component
data modify storage jw-s:storage component set from entity @s data.temp[0]
data remove storage jw-s:storage component.delay
function jw-s_component:create
##  Suite
data remove entity @s data.temp[0]
execute store result score l jw-s_calc run data get entity @s data.temp
execute unless score l jw-s_calc matches 1.. run function jw-s_timeline:stop
execute if score l jw-s_calc matches 1.. store result score @s jw-s_fuse run data get entity @s data.temp[0].delay
execute if score l jw-s_calc matches 1.. as @s[scores={jw-s_fuse=..0}] run function jw-s_timeline:next