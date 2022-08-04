#> jw-s_timeline:kill
tellraw @a[tag=debug-tellraw] "jw-s_timeline:kill"
#@context as <?:timeline ready> at @s
#@within jw-s_timeline:force-stop

scoreboard players operation id jw-s_calc = @s jw-s_id
execute as @e[type=marker,tag=jw-s-component] if score @s jw-s_show_parent = id jw-s_calc run kill @s
execute as @e[type=#jw-s:shell,tag=jw-s-shell] if score @s jw-s_show_parent = id jw-s_calc run kill @s