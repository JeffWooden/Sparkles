#   Components
scoreboard players remove @e[type=marker,tag=jw-s-component,tag=!summoner] jw-s_life 1
execute as @e[type=marker,tag=jw-s-component,tag=!summoner,scores={jw-s_life=..0}] at @s run function jw-s_shell:create