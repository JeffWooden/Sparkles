#> jw-s_shell:fountain/main
#@nodebug
#@context as <Shell:fountain> at @s
#@within jw-s_shell:tick

#   Création jet
function jw-s_shell:fountain/init

#   Itération des motions
scoreboard players remove @s jw-s_fuse 1
execute if score @s jw-s_fuse matches ..0 run data remove entity @s data.motions[0]
execute if score @s jw-s_fuse matches ..0 store result score @s jw-s_fuse run data get entity @s data.motions[0].fuse
execute store result score l jw-s_calc run data get entity @s data.motions
execute if score @s jw-s_fuse matches ..0 unless score l jw-s_calc matches ..0 run function jw-s_shell:fountain/main

#   Meurtre du faisceau en fin de vie
execute if score l jw-s_calc matches ..0 run kill @s