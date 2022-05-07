##  context : as <Marker:component> storage <jw-s:storage component>
#   Type
execute store result score @s jw-s_type run data get storage jw-s:storage component.type

#   Position
execute if data storage jw-s:storage component.pos run function jw-s_component:load/pos

#   onGround
execute if data storage jw-s:storage component.onGround at @s run function jw-s_component:load/onground

#   Coquille
data modify entity @s data set from storage jw-s:storage component.shell