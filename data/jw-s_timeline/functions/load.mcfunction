#> jw-s_timeline:load
tellraw @a[tag=debug-tellraw] "jw-s_timeline:load"
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

#   Ajout des tags
tag @s add jw-s_timeline
tag @s add ready
tellraw @a {"nbt":"Tags","entity":"@s"}
#   Initialisation des nbt
data modify entity @s data.temp set from entity @s data.timeline
function jw-s_timeline:next