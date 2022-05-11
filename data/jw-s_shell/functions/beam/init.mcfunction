#> jw-s_shell:beam/init
#@nodebug
#@context as <Shell:beam> at @s
#@within jw-s_shell:beam/main

tag @s add this
summon marker ~ ~ ~ {Tags:["jw-s-beam_target"]}
#   Positionnement cible
##  Position beam
execute store result score x jw-s_calc run data get entity @s Pos[0] 100
execute store result score y jw-s_calc run data get entity @s Pos[1] 100
execute store result score z jw-s_calc run data get entity @s Pos[2] 100
##  Décalage
execute store result score a jw-s_calc run data get entity @s data.path[0].pos[0] 100
execute store result score b jw-s_calc run data get entity @s data.path[0].pos[1] 100
execute store result score c jw-s_calc run data get entity @s data.path[0].pos[2] 100
##  Intégration nouvelle position
execute store result entity @e[type=marker,tag=jw-s-beam_target,limit=1] Pos[0] double 0.01 run scoreboard players operation x jw-s_calc += a jw-s_calc
execute store result entity @e[type=marker,tag=jw-s-beam_target,limit=1] Pos[1] double 0.01 run scoreboard players operation y jw-s_calc += b jw-s_calc
execute store result entity @e[type=marker,tag=jw-s-beam_target,limit=1] Pos[2] double 0.01 run scoreboard players operation z jw-s_calc += c jw-s_calc
execute as @e[type=marker,tag=jw-s-beam_target,limit=1] at @s run tp ~ ~ ~

#   Raycast faisceau
execute store result score particleId jw-s_calc run data get entity @s data.beam.particle.id
execute if data entity @s data.path[0].particle.id store result score particleId jw-s_calc run data get entity @s data.path[0].particle.id
execute store result score particleOption jw-s_calc run data get entity @s data.beam.particle.option
execute if data entity @s data.path[0].particle.option store result score particleOption jw-s_calc run data get entity @s data.path[0].particle.option
execute store result score l jw-s_calc run data get entity @s data.path[0].length
execute if score l jw-s_calc matches ..0 run scoreboard players operation l jw-s_calc = beamDefaultLength jw-s_var
execute if score l jw-s_calc > beamMaxLength jw-s_calc run scoreboard players operation l jw-s_calc = beamMaxLength jw-s_var
execute as @e[type=marker,tag=jw-s-beam_target,limit=1] at @s facing entity @e[type=#jw-s:shell,tag=jw-s-beam,tag=this,limit=1] eyes facing ^ ^ ^-0.1 positioned as @e[type=#jw-s:shell,tag=jw-s-beam,tag=this,limit=1] run function jw-s_shell:beam/raycast

#   Fin
tag @s remove this