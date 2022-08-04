#> jw-s_shell:create/childs
#@context as <Marker:component> at @s
#@within jw-s_shell:create

#alias entity Summoner @e[type=marker,tag=jw-s-component,tag=summoner,tag=init,limit=1,sort=nearest]

#   Création
summon marker ~ ~ ~ {Tags:["jw-s-component","summoner","init"]}
scoreboard players operation @e[type=marker,tag=jw-s-component,tag=summoner,tag=init,limit=1,sort=nearest] jw-s_id = #max jw-s_id
scoreboard players operation @e[type=marker,tag=jw-s-component,tag=summoner,tag=init,limit=1,sort=nearest] jw-s_show_parent = @s jw-s_show_parent
data modify entity @e[type=marker,tag=jw-s-component,tag=summoner,tag=init,limit=1,sort=nearest] data set from entity @s data.childs[0]
tag @e[type=marker,tag=jw-s-component,tag=summoner,tag=init,limit=1,sort=nearest] remove init

#   Boucle
scoreboard players remove l jw-s_calc 1
data remove entity @s data.childs[0]
execute if score l jw-s_calc matches 1.. run function jw-s_shell:create/childs