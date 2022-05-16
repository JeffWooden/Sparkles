#> jw-s_shell:comet/main
#@nodebug
#@context as <Shell:comet> at @s
#@within jw-s_shell:tick

#   Affichage des particules sans swirl
execute if score @s jw-s_swirlLength matches ..0 run function #jw-s:particle_id
#   Affichage des particules avec swirl
execute unless score @s jw-s_swirlLength matches ..0 run function jw-s_shell:comet/raycast-init

#   Gestion de la vie
scoreboard players remove @s jw-s_life 1
kill @s[scores={jw-s_life=..0}]