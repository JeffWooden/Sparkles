data modify entity @s data set from storage jw-s:component data.particles[-1]
data remove storage jw-s:component data.particles[-1]
data modify entity @s data.particle_settings set from storage jw-s:component data.particle_settings

tag @s remove init