#> jw-s_shell:sound/create
#@context at <Marker:component> as Player facing entity @s feet

summon marker ~ ~ ~ {Tags:["jw-s-sound_wave","init"]}
execute as @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] run data modify entity @s data.Pos set from entity @s Pos
scoreboard players operation @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] jw-s_var = sound jw-s_calc
scoreboard players operation @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] jw-s_id = @s jw-s_id
scoreboard players set @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] jw-s_life 135
tp @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] ~ ~ ~ facing entity @s feet
tag @e[type=marker,tag=jw-s-sound_wave,tag=init,limit=1,sort=nearest] remove init