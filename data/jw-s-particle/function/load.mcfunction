# @as <particle>

# set default settings
data modify storage jw-s:component particle_settings set value {pos:"~ ~ ~",delta:"0 0 0",speed:0,count:1,display_mode:"normal",viewers:"@a[tag=!jws-low_fps]"}
$data modify storage jw-s:component temp set value $(particle_settings)
$data modify storage jw-s:component particle_settings.pos set value "$(co)"
data modify storage jw-s:component particle_settings.delta set from storage jw-s:component temp.delta
data modify storage jw-s:component particle_settings.speed set from storage jw-s:component temp.speed
data modify storage jw-s:component particle_settings.count set from storage jw-s:component temp.count
data modify storage jw-s:component particle_settings.display_mode set from storage jw-s:component temp.display_mode
data modify storage jw-s:component particle_settings.viewer set from storage jw-s:component temp.viewer
data modify storage jw-s:component particle_settings.settings set from storage jw-s:component temp.settings
data modify storage jw-s:component particle_settings.id set from storage jw-s:component temp.id

# tellraw @a {"nbt": "particle_settings", "storage": "jw-s:component"}
function jw-s-particle:display with storage jw-s:component particle_settings