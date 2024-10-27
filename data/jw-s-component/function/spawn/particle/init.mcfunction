data modify entity @s data set from storage jw-s:sparkles component.data.particles[-1]
data remove storage jw-s:sparkles component.data.particles[-1]
data modify entity @s data.particle_settings set from storage jw-s:sparkles component.data.particle_settings
scoreboard players add @s jws-frame 0
execute store result score @s jws-next_frame run data get entity @s data.frames.l[-1]

tag @s remove init