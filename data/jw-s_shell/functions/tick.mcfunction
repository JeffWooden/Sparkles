#   Explosion obus
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=child,predicate=!jw-s:riding_shell] at @s run function jw-s_shell:explode

#   Faisceau
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam] at @s run function jw-s_shell:beam/main