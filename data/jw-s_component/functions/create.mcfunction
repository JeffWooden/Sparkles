#> jw-s_component:create
#@context as <Summoner> at @s
#@input storage 'jw-s:storage component'

##      Chargement composant
summon marker ~ ~ ~ {Tags:["jw-s-component"]}
execute as @e[type=marker,tag=jw-s-component] run function jw-s_component:load