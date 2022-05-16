#   Timelines
scoreboard players remove @e[type=marker,tag=jw-s_timeline] jw-s_fuse 1
execute as @e[type=marker,tag=jw-s_timeline,scores={jw-s_fuse=..0}] at @s run function jw-s_timeline:next