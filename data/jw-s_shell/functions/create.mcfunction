#> jw-s_shell:create
#@context as <Marker:component> at @s
#@within jw-s_component:create
#@input
#   score @s type
#       0 = marker
#       1 = firework_rocket
#@todo rajouter les autres types

#   Création
execute if score @s type matches 0 run summon marker ~ ~ ~ {Tags:["jw-s-shell","init"]}
execute if score @s type matches 1 run summon firework_rocket ~ ~ ~ {Tags:["jw-s-shell","init"]}

#   Application nbt
data modify entity @e[type=#jw-s:shell,tag=jw-s-shell,tag=init,limit=1,sort=nearest] {} set from entity @s data.shell