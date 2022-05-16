#> jw-s_shell:comet/raycast
#@nodebug
#@context as <Shell:comet> facing <direction>
scoreboard players remove c jw-s_calc 1
execute if score c jw-s_calc matches 0 run function #jw-s:particle_id
execute if score c jw-s_calc matches 1.. positioned ^ ^ ^0.1 run function jw-s_shell:comet/raycast