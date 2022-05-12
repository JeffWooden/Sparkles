#> jw-s_shell:comet/main
#@nodebug
#@context as <Shell:comet> at @s
#@within jw-s_shell:tick

#   Affichage des particules
execute if score @s jw-s_swirlLength matches ..0 run function #jw-s:particle_id
execute unless score @s jw-s_swirlLength matches ..0 run scoreboard players operation c jw-s_calc = @s jw-s_swirlLength
execute unless score @s jw-s_calc matches ..0 run function jw-s_shell:comet/raycast-init

#   Gestion de la vie
scoreboard players remove @s jw-s_life 1
kill @s[scores={jw-s_life=..0}]