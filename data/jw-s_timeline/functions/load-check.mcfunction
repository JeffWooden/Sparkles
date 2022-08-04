#> jw-s_timeline:load-check
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

##  Vérification présence effets
execute store result score @s jw-s_length run data get entity @s data.timeline
execute unless score @s jw-s_length matches 1.. run tellraw @a[tag=debug-tellraw] ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"selector":"@s"},{"text":" can't load anything.","color":"red"}]
##  Set ID
scoreboard players add @s jw-s_id 0
execute if score @s jw-s_id matches 0 run function jw-s_timeline:set-id
execute if score @s jw-s_length matches 1.. run function jw-s_timeline:load