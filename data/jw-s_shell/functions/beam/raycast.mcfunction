#> jw-s_shell:beam/raycast
#@nodebug
#@context facing <Shell:beam> as <Shell:beam_target>
#@input storage 'jw-s:storage beam'
#@within jw-s_shell:beam/init

#   Création particule
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["jw-s-beam_particle","init"]}
data modify entity @e[type=area_effect_cloud,tag=jw-s-beam_particle,tag=init,limit=1,sort=nearest] {} merge from storage jw-s:storage beam
tag @e[type=area_effect_cloud,tag=jw-s-beam_particle,tag=init,limit=1,sort=nearest] remove init

#   Téléportation + vie
scoreboard players remove c jw-s_calc 1
execute if score c jw-s_calc matches 1.. unless entity @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam,distance=..0.5] positioned ^ ^ ^0.5 run function jw-s_shell:beam/raycast
execute if entity @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam,distance=..0.5] run kill @s
execute unless score c jw-s_calc matches 1.. run kill @s