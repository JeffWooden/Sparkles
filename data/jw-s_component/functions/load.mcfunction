#> jw-s_component:load
#@context as <Marker:component>
#@within jw-s_component:load

#   Type
execute store result score @s jw-s_type run data get entity @s data.type

#   Position
execute if data storage jw-s:storage data.pos run function jw-s_component:load/pos

#   onGround
execute if data storage jw-s:storage {data:{onGround:1}} at @s run function jw-s_component:load/on-ground

#   Coquille
data modify entity @s data set from storage jw-s:storage data.shell