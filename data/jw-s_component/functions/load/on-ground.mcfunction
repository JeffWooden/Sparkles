#> jw-s_component:load/on-ground
#@context as <Marker:component> at @s
#@within jw-s_component:load

execute align y run tp @s ~ ~-1 ~
execute at @s if block ~ ~ ~ #minecraft:slabs align y run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ #jw-s:void