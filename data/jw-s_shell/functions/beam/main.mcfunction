#> jw-s_shell:beam/main
#@nodebug
#@context as <Shell:beam> at @s
#@within jw-s_shell:tick

#   Création du faisceau
function jw-s_shell:beam/init

#   Itération des positions du chemin
scoreboard players remove @s jw-s_fuse 1
execute if score @s jw-s_fuse matches ..0 run data remove entity @s data.path[0]
execute if score @s jw-s_fuse matches ..0 store result score @s jw-s_fuse run data get entity @s data.path[0].fuse

#   Meurtre du faisceau en fin de vie
execute store result score l jw-s_calc run data get entity @s data.path
execute if score l jw-s_calc matches ..0 run kill @s