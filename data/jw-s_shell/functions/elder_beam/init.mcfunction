#> jw-s_shell:elder_beam/init
#@nodebug
#@context as <Shell:elder_beam> at @s
#@within jw-s_shell:elder_beam/main

tag @s add this
summon marker ~ ~ ~ {Tags:["jw-s-elder_beam_target"]}
#   Positionnement cible
##  Position elder_beam
execute store result score x jw-s_calc run data get entity @s Pos[0] 100
execute store result score y jw-s_calc run data get entity @s Pos[1] 100
execute store result score z jw-s_calc run data get entity @s Pos[2] 100
##  Décalage
execute store result score a jw-s_calc run data get entity @s data.path[0].pos[0] 100
execute store result score b jw-s_calc run data get entity @s data.path[0].pos[1] 100
execute store result score c jw-s_calc run data get entity @s data.path[0].pos[2] 100
##  Intégration nouvelle position
execute store result entity @e[type=marker,tag=jw-s-elder_beam_target,limit=1] Pos[0] double 0.01 run scoreboard players operation x jw-s_calc += a jw-s_calc
execute store result entity @e[type=marker,tag=jw-s-elder_beam_target,limit=1] Pos[1] double 0.01 run scoreboard players operation y jw-s_calc += b jw-s_calc
execute store result entity @e[type=marker,tag=jw-s-elder_beam_target,limit=1] Pos[2] double 0.01 run scoreboard players operation z jw-s_calc += c jw-s_calc
execute as @e[type=marker,tag=jw-s-elder_beam_target,limit=1] at @s run tp ~ ~ ~

#   Raycast faisceau
data modify storage jw-s:storage elder_beam set from entity @s data.elder_beam
execute if data entity @s data.path[0].particle run data modify storage jw-s:storage elder_beam.Particle set from entity @s data.path[0].particle
scoreboard players operation c jw-s_calc = elder_beamMaxLength jw-s_var
execute as @e[type=marker,tag=jw-s-elder_beam_target,limit=1] at @s facing entity @e[type=#jw-s:shell,tag=jw-s-elder_beam,tag=this,limit=1] eyes positioned ^ ^ ^1 run function jw-s_shell:elder_beam/raycast

#   Fin
tag @s remove this