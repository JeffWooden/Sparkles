#> jw-s_component:create
#@context as <Summoner> at @s
#@input storage 'jw-s:storage component'

##      Chargement composant
summon marker ~ ~ ~ {Tags:["jw-s-component"]}
data modify entity @e[type=marker,tag=jw-s-component,limit=1,sort=nearest] data set from storage jw-s:storage component
execute as @e[type=marker,tag=jw-s-component] run function jw-s_component:load
execute as @e[type=marker,tag=jw-s-component] at @s run function jw-s_component:shell_activation