# TODO: particle settings, life

data modify entity @s data.co set from entity @s data.frames[-1].co
function jw-s-particle:load with entity @s data

data remove entity @s data.frames[-1]
execute store result score n jws-calc run data get entity @s data.frames
execute if score n jws-calc matches ..0 run kill @s