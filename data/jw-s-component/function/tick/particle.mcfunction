# Reset particle settings values in storage
data modify storage jw-s:sparkles particle_settings set value {pos:"~ ~ ~",delta:"0 0 0",speed:0,count:1,display_mode:"normal",viewers:"@a[tag=!jws-low_fps]",configurations:{}}
# Global particle settings
function jw-s-particle:load_global
# Frame particle settings
function jw-s-particle:load_frame

function jw-s-particle:display with storage jw-s:sparkles particle_settings

data remove entity @s data.frames.co[-1]
data remove entity @s data.frames.color[-1]
data remove entity @s data.frames.scale[-1]
data remove entity @s data.frames.l[-1]

# Check remaining frames, if none is preset, kills the particle
execute store result score n jws-calc run data get entity @s data.frames.l
execute if score n jws-calc matches ..0 run kill @s
execute store result score @s jws-next_frame run data get entity @s data.frames.l[-1]