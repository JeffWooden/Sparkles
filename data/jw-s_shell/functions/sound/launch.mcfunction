#> jw-s_shell:sound/launch
#@context as <Marker:component> at @s
#@within jw-s_shell:create
#@input entity @s data.sound.launch
#   1 : mortar
#   2 : tube
#   3 : huge-tube

execute store result score sound jw-s_calc run data get entity @s data.sound.launch
execute at @s as @a[distance=..200] facing entity @s feet run function jw-s_shell:sound/create