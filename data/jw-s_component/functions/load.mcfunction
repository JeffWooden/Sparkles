##  context : as <Marker:component> storage <jw-s:storage component>
#   Type
execute store result score @s jw-s_type run data get storage jw-s:storage component.type

#   Position
##  Entité
execute store result score x jw-s_calc run data get entity @s Pos[0] 100
execute store result score y jw-s_calc run data get entity @s Pos[1] 100
execute store result score z jw-s_calc run data get entity @s Pos[2] 100
##  Opérateurs
execute store result score a jw-s_calc run data get storage jw-s:storage component.pos[0] 100
execute store result score b jw-s_calc run data get storage jw-s:storage component.pos[1] 100
execute store result score c jw-s_calc run data get storage jw-s:storage component.pos[2] 100
##  Application
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation x jw-s_calc += a jw-s_calc
execute store result entity @s Pos[1] double 0.01 run scoreboard players operation y jw-s_calc += b jw-s_calc
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation z jw-s_calc += c jw-s_calc

#   onGround
execute if data storage jw-s:storage component.onGround at @s run function jw-s_component:load/onground

#   Coquille
data modify entity @s data set from storage jw-s:storage component.shell