#> jw-s_component:load
tellraw @a[tag=debug-tellraw] "jw-s_component:load"
#@context as <Marker:component>
#@within jw-s_component:load

#   Type
execute store result score @s jw-s_type run data get entity @s data.type

#   Position
execute if data entity @s data.pos run function jw-s_component:load/pos

#   onGround
execute if data entity @s {data:{onGround:1}} at @s run function jw-s_component:load/on-ground

#   Création Coquille
execute as @s at @s run function jw-s_shell:create