#> jw-s_shell:explode
#@context as <?:Shell child> at @s
#@within jw-s_shell:tick

#  Activation des autres composants
scoreboard players operation id jw-s_calc = @s jw-s_id
execute as @e[type=marker,tag=jw-s-component,tag=summoner] if score @s jw-s_id = id jw-s_calc at @s run tag @s add selected
tp @e[type=marker,tag=jw-s-component,tag=summoner,tag=selected] @s
execute as @e[type=marker,tag=jw-s-component,tag=summoner,tag=selected] at @s run function jw-s_component:load

#   Fin
tag @e[type=marker,tag=jw-s-component] remove selected
kill @s[type=!player]