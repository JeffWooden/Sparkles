#> jw-s_timeline:force-stop
tellraw @a[tag=debug-tellraw] "jw-s_timeline:force-stop"
#@context as <?:timeline> || as Player

execute unless entity @s[type=marker,tag=jw-s_timeline] as @e[type=marker,tag=jw-s_timeline] run function jw-s_timeline:stop
execute unless entity @s[type=marker,tag=jw-s_timeline] if entity @e[type=marker,tag=jw-s_timeline,limit=1] run tellraw @a ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"text":"[","bold":true,"color":"dark_red"},{"selector":"@s","italic":true,"color":"gray"},{"text":"] All timelines have been stopped!","bold":true,"color":"dark_red"}]
execute if entity @s[type=marker,tag=jw-s_timeline] run function jw-s_timeline:force