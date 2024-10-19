data modify storage jw-s:component particle_settings.delta set from entity @s data.frames[-1].particle_settings.delta
data modify storage jw-s:component particle_settings.speed set from entity @s data.frames[-1].particle_settings.speed
data modify storage jw-s:component particle_settings.count set from entity @s data.frames[-1].particle_settings.count
data modify storage jw-s:component particle_settings.display_mode set from entity @s data.frames[-1].particle_settings.display_mode
data modify storage jw-s:component particle_settings.viewers set from entity @s data.frames[-1].particle_settings.viewers
data modify storage jw-s:component particle_settings.settings set from entity @s data.frames[-1].particle_settings.settings
data modify storage jw-s:component particle_settings.id set from entity @s data.frames[-1].particle_settings.id
data modify storage jw-s:component particle_settings.pos set from entity @s data.frames[-1].co

tellraw @a [{"nbt": "particle_settings.viewers","storage": "jw-s:component"},{"text":"   "},{"nbt":"data.frames[-1].particle_settings.viewers","entity":"@s"}]