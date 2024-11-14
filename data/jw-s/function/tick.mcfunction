execute as @e[type=marker,tag=jws-component] at @s run function jw-s-component:tick
execute at @e[tag=jws-child,tag=jws-display] run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~ ~ 0 0 0 0.02 10