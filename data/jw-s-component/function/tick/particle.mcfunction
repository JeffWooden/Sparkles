# Reset particle settings values in storage
data modify storage jw-s:component particle_settings set value {pos:"~ ~ ~",delta:"0 0 0",speed:0,count:1,display_mode:"normal",viewers:"@a[tag=!jws-low_fps]"}
# Global particle settings
function jw-s-particle:load_global
# Frame particle settings
function jw-s-particle:load_frame

function jw-s-particle:display with storage jw-s:component particle_settings

data remove entity @s data.frames[-1]

# Check remaining frames, if none is preset, kills the particle
execute store result score n jws-calc run data get entity @s data.frames
execute if score n jws-calc matches ..0 run kill @s