#> jw-s_component:load
#@context as <Marker:component>
#@input storage 'jw-s:storage component'
#@within jw-s_component:load

#   Type
execute store result score @s jw-s_type run data get storage jw-s:storage component.type

#   Position
execute if data storage jw-s:storage component.pos run function jw-s_component:load/pos

#   onGround
execute if data storage jw-s:storage {component:{onGround:1}} at @s run function jw-s_component:load/on-ground

#   Coquille
data modify entity @s data set from storage jw-s:storage component.shell