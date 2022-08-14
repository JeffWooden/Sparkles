#> jw-s_shell:sound/main
#@context as <Marker:sound> at @s

#   Définition cible
execute as @a if score @s jw-s_id = id jw-s_calc run tag @s add target

#   Itération
scoreboard players remove @s jw-s_life 1
tp @s ^ ^ ^4 facing entity @a[tag=target,limit=1] feet

#   Test son
scoreboard players operation id jw-s_calc = @s jw-s_id
execute if entity @a[tag=target,distance=..4] run function jw-s_shell:sound/play
tag @a remove target