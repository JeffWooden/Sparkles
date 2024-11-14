# TODO : Add frame's display settings
scoreboard players operation comp jws-calc = @s jws-id
execute as @e[type=block_display,tag=jws-child,tag=jws-display] if score @s jws-id = comp jws-calc run tag @s add target
data modify entity @e[type=block_display,tag=jws-child,tag=target,limit=1] transformation set from entity @s data.updates.transformation[-1]
# Removing frame data
data remove entity @s data.updates.l[-1]
data remove entity @s data.updates.transformation[-1]

# Check remaining update frames, if none is present, kills the display component
execute store result score n jws-calc run data get entity @s data.updates.l
execute if score n jws-calc matches ..0 run kill @e[type=block_display,tag=jws-child,tag=target,limit=1]
execute if score n jws-calc matches ..0 run kill @s
execute store result score @s jws-next_frame run data get entity @s data.updates.l[-1]
tag @e remove target