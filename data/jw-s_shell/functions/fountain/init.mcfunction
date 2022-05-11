#> jw-s_shell:fountain/init
#@nodebug
#@context as <Shell:fountain>
#@within jw-s_shell:fountain/main
#@input entity @s data.motions[0]

#   Jet d'eau
summon snowball ~ ~ ~ {Item:{id:"minecraft:stone_button",Count:1b,tag:{}},Motion:[0.0,0.0,0.0],Tags:["jw-s-fountain_jet","init"]}
##  Application apparence
execute if data entity @s data.motions[0].item run data modify entity @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] Item merge from entity @s data.motions[0].item
execute unless data entity @s data.motions[0].item run data modify entity @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] Item merge from entity @s data.item
##  Application motion
data modify entity @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] Motion set from entity @s data.motions[0].motion
##  Application vie
execute store result score @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] jw-s_life run data get entity @s data.motions[0].life
execute as @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] if score @s jw-s_life matches ..0 run scoreboard players operation @s jw-s_life = fountainJetDefaultLife jw-s_var

#   Fin
tag @e[type=snowball,tag=jw-s-fountain_jet,tag=init,limit=1,sort=nearest] remove init