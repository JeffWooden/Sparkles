# TODO: particle settings, life

data modify storage jw-s:component particle_settings set value {pos:"~ ~ ~",delta:"0 0 0",speed:0,count:1,display_mode:"normal",viewers:"@a[tag=!jws-low_fps]"}
data modify storage jw-s:component particle_settings.delta set from entity @s data.particle_settings.delta
data modify storage jw-s:component particle_settings.speed set from entity @s data.particle_settings.speed
data modify storage jw-s:component particle_settings.count set from entity @s data.particle_settings.count
data modify storage jw-s:component particle_settings.display_mode set from entity @s data.particle_settings.display_mode
data modify storage jw-s:component particle_settings.viewer set from entity @s data.particle_settings.viewer
data modify storage jw-s:component particle_settings.settings set from entity @s data.particle_settings.settings
data modify storage jw-s:component particle_settings.id set from entity @s data.particle_settings.id
data modify storage jw-s:component particle_settings.pos set from entity @s data.frames[-1].co

function jw-s-particle:display with storage jw-s:component particle_settings

data remove entity @s data.frames[-1]
execute store result score n jws-calc run data get entity @s data.frames
execute if score n jws-calc matches ..0 run kill @s