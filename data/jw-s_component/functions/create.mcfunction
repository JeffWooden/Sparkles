#> jw-s_component:create
tellraw @a[tag=debug-tellraw] "jw-s_component:create"
#@context as <Summoner> at @s
#@input storage 'jw-s:storage component'

##      Chargement composant
summon marker ~ ~ ~ {Tags:["jw-s-component","init"]}
data modify entity @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] data set from storage jw-s:storage component
execute as @e[type=marker,tag=jw-s-component,tag=init,limit=1,sort=nearest] run function jw-s_component:load