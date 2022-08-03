#> jw-s_timeline:launch-check
tellraw @a[tag=debug-tellraw] "jw-s_timeline:launch-check"
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

execute store result score l jw-s_calc run data get entity @s data.timeline
execute unless score l jw-s_calc matches 1.. run tellraw @a[tag=debug-tellraw] ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"selector":"@s"},{"text":" can't launch anything.","color":"red"}]
execute if score l jw-s_calc matches 1.. run function jw-s_timeline:launch