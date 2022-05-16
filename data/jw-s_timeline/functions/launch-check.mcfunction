#> jw-s_timeline:launch-check
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

execute store result score l jw-s_calc run data get entity @s data.timeline
execute if score l jw-s_calc matches 1.. run function jw-s_timeline:launch
execute unless score l jw-s_calc matches 1.. run tellraw @a ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"selector":"@s"},{"text":" can't launch anything.","color":"red"}]