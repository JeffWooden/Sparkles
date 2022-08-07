#> jw-s_timeline:launch-check
#@context as <?:timeline> at @s
#@input @s data.timeline[<Array:Shell>]

execute store result score @s jw-s_length run data get entity @s data.timeline
execute unless score @s jw-s_length matches 1.. run tellraw @a[tag=debug-tellraw] [{"text":"No effect found for ","color":"red"},{"selector":"@s","color":"red"}]
execute if score @s jw-s_length matches 1.. run function jw-s_timeline:launch