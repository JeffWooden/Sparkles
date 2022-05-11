#   Explosion obus
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=child,predicate=!jw-s:riding_shell] at @s run function jw-s_shell:explode

#   Faisceau
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-elder_beam] at @s run function jw-s_shell:elder_beam/main
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam] at @s run function jw-s_shell:beam/main

#   Fontaine
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-fountain] at @s run function jw-s_shell:fountain/main