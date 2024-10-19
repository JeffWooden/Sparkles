# TODO: particle settings, life
tellraw @a {"nbt": "data.frames[-1]", "entity": "@s"}
data remove entity @s data.frames[-1]
execute store result score n jws-calc run data get entity @s data.frames
execute if score n jws-calc matches ..0 run kill @s