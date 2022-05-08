#> jw-s_shell:create
tellraw @a[tag=debug-tellraw] "jw-s_shell:create"
#@context as <Marker:component> at @s
#@within jw-s_component:create
#@input
#   score @s jw-s_type
#       0 = marker
#       1 = firework_rocket
#       2 = faisceau
#@todo rajouter les autres types
#alias entity Shell @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest]

#   Création
execute if score @s jw-s_type matches 0 run summon marker ~ ~ ~ {Tags:["jw-s-shell","init"],Passengers:[{id:"minecraft:marker",Tags:["jw-s-shell","child","init"]}]}
execute if score @s jw-s_type matches 1 run summon firework_rocket ~ ~ ~ {Tags:["jw-s-shell","init"],Passengers:[{id:"minecraft:marker",Tags:["jw-s-shell","child","init"]}]}
execute if score @s jw-s_type matches 2 run summon marker ~ ~ ~ {Tags:["jw-s-shell","init","jw-s-beam"],data:{beam:{Particle:"electric_spark",Radius:0.1f,Duration:2,Tags:["jw-s-beam"]}},Passengers:[{id:"minecraft:marker",Tags:["jw-s-shell","child","init"]}]}

#   Application nbt
data modify entity @e[type=#jw-s:shell,tag=jw-s-shell,tag=!child,tag=init,limit=1,sort=nearest] {} merge from entity @s data.shell
execute if score @s jw-s_type matches 2 as @e[type=#jw-s:shell,tag=jw-s-shell,tag=jw-s-beam,tag=!child,tag=init,limit=1,sort=nearest] store result score @s jw-s_fuse run data get entity @s data.path[0].fuse

#   Créations des enfants
execute store result score l jw-s_calc run data get entity @s data.childs
execute if score l jw-s_calc matches 1.. run scoreboard players add #max jw-s_id 1
execute if score l jw-s_calc matches 1.. if score #max jw-s_id matches 2147483640 run scoreboard players reset #max jw-s_id
execute if score l jw-s_calc matches 1.. run scoreboard players operation @e[type=#jw-s:shell,tag=jw-s-shell,tag=child,tag=init,limit=1,sort=nearest] jw-s_id = #max jw-s_id
execute if score l jw-s_calc matches 1.. run tag @e[type=#jw-s:shell,tag=jw-s-shell,tag=init,limit=1,sort=nearest] add has-childs
execute if score l jw-s_calc matches 1.. run function jw-s_shell:create/childs

#   Meurtre component
tag @e[type=#jw-s:shell,tag=jw-s-shell,tag=init,limit=1,sort=nearest] remove init
kill @s