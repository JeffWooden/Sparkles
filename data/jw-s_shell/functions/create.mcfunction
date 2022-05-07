#> jw-s_shell:create
tellraw @a[tag=debug-tellraw] "jw-s_shell:create"
#@context as <Marker:component> at @s
#@within jw-s_component:create
#@input
#   score @s jw-s_type
#       0 = marker
#       1 = firework_rocket
#@todo rajouter les autres types

#   Création
execute if score @s jw-s_type matches 0 run summon marker ~ ~ ~ {Tags:["jw-s-shell","init"],Passengers:[{id:"minecraft:marker",Tags:["jw-s-shell","child","init"]}]}
execute if score @s jw-s_type matches 1 run summon firework_rocket ~ ~ ~ {Tags:["jw-s-shell","init"],Passengers:[{id:"minecraft:marker",Tags:["jw-s-shell","child","init"]}]}
scoreboard players add #max jw-s_id 1
scoreboard players operation @e[type=#jw-s:shell,tag=jw-s-shell,tag=child,tag=init,limit=1,sort=nearest] jw-s_id = #max jw-s_id

#   Application nbt
data modify entity @e[type=#jw-s:shell,tag=jw-s-shell,tag=init,limit=1,sort=nearest] {} merge from entity @s data.shell

#   Meurtre component
kill @s