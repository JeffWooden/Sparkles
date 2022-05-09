#> jw-s_shell:beam/raycast
#@nodebug
#@context as <Shell:beam_target> at @s facing entity <Shell:beam> eyes facing ^ ^ ^-0.1 positioned as <Shell:beam>
#@within jw-s_shell:beam/init

#   Particule
function #jw-s:particle_id

#   Gestion meurtre beam target
scoreboard players remove l jw-s_calc 1
execute if score l jw-s_calc matches 1.. positioned ^ ^ ^0.5 run function jw-s_shell:beam/raycast
execute unless score l jw-s_calc matches 1.. run kill @s