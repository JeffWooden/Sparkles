#> jw-s_component:create
#@context as <Summoner> at @s
#@input storage 'jw-s:storage component'

##      Chargement composant
summon marker ~ ~ ~ {Tags:["jw-s-component","init"],CustomName:'{"text":"Component"}'}
data modify entity @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] data set from storage jw-s:storage component
scoreboard players operation @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] jw-s_show_parent = @s jw-s_id
execute if entity @s[tag=ready] run tag @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] add ready
execute as @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] run function jw-s_component:load