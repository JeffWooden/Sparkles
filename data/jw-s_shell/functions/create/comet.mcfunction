#> jw-s_shell:create/comet
#@context as <Marker:component> at @s
#@within jw-s_shell:create

#   Instanciation des scores
##  Life
execute store result score f jw-s_calc run data get entity @s data.shell.life
execute if score f jw-s_calc matches ..0 run scoreboard players operation f jw-s_calc = cometDefaultLife jw-s_var
scoreboard players operation @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest] jw-s_life = f jw-s_calc
##  Particules
execute store result score @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest] jw-s_partId run data get entity @s data.shell.particle.id
execute store result score @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest] jw-s_partOption run data get entity @s data.shell.particle.option
##  Swirl
execute store result score @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest] jw-s_calc run data get entity @s data.shell.particle.swirl