#> jw-s_timeline:force-stop
tellraw @a[tag=debug-tellraw] "jw-s_timeline:force-stop"
#@context as <?:timeline> || as Player

##  Meurtre et désactivation des effets associés
execute if entity @s[type=marker,tag=jw-s_timeline] run scoreboard players operation id jw-s_calc = @s jw-s_id
execute if entity @s[type=marker,tag=jw-s_timeline] as @e[type=marker,tag=jw-s-component] if score @s jw-s_show_parent = id jw-s_calc run kill @s
execute if entity @s[type=marker,tag=jw-s_timeline] as @e[type=#jw-s:shell,tag=jw-s-shell] if score @s jw-s_show_parent = id jw-s_calc run kill @s
execute if entity @s[type=marker,tag=jw-s_timeline] run function jw-s_timeline:stop

execute unless entity @s[type=marker,tag=jw-s_timeline] as @e[type=marker,tag=jw-s_timeline] run function jw-s_timeline:stop
execute unless entity @s[type=marker,tag=jw-s_timeline] if entity @e[type=marker,tag=jw-s_timeline,limit=1] run tellraw @a ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"text":"[","bold":true,"color":"dark_red"},{"selector":"@s","italic":true,"color":"gray"},{"text":"] All timelines have been stopped!","bold":true,"color":"dark_red"}]
execute unless entity @s[type=marker,tag=jw-s_timeline] as @e[type=marker,tag=jw-s_timeline] at @s run function jw-s_timeline:kill