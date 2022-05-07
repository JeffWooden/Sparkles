#> jw-s_component:load/on-ground
#@nodebug
#@context as <Marker:component> at @s
#@within jw-s_component:load
#@todo améliorer la complexité de la détection du sol

tp @s ~ ~ ~
execute at @s if block ~ ~-1 ~ #minecraft:slabs align y run tp @s ~ ~-0.5 ~
execute at @s align y positioned ~ ~-1 ~ if block ~ ~ ~ #jw-s:void run function jw-s_component:load/on-ground