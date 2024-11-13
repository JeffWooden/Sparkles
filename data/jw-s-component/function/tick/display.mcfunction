
# Removing frame data
data remove entity @s data.updates.l[-1]
data remove entity @s data.updates.transformation[-1]

# Check remaining update frames, if none is present, kills the display component
execute store result score n jws-calc run data get entity @s data.updates.l
execute if score n jws-calc matches ..0 run kill @s
execute store result score @s jws-next_frame run data get entity @s data.updates.l[-1]