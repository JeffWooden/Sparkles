#> jw-s_timeline:launch
#@context as <?:timeline> at @s
#@within jw-s_timeline:launch-check

##  Ciblage des effets
scoreboard players operation id jw-s_calc = @s jw-s_id
execute as @e[type=#jw-s:shell,tag=jw-s-component,tag=ready] if score @s jw-s_show_parent = id jw-s_calc run tag @s remove ready

##  Fin
tag @s remove ready