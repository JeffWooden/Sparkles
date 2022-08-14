#   Explosion obus
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=child,predicate=!jw-s:riding_shell] at @s run function jw-s_shell:explode

#   Faisceau
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-elder_beam] at @s run function jw-s_shell:elder_beam/main
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam] at @s run function jw-s_shell:beam/main

#   Fontaine
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-fountain] at @s run function jw-s_shell:fountain/main
execute as @e[type=snowball,tag=jw-s-fountain_jet] at @s run function #jw-s:particle_id

#   Comète
execute as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-comet] at @s run function jw-s_shell:comet/main

#   Ondes sonores
execute as @e[type=marker,tag=jw-s-sound_wave] at @s run function jw-s_shell:sound/main
kill @e[type=marker,tag=jw-s-sound_wave,scores={jw-s_life=..0}]