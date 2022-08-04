#> jw-s_timeline:launch-check
#@context as <?:timeline>

##  Test conditions
execute as @s[tag=ready] at @s run function jw-s_timeline:launch
execute as @s[tag=!ready] run tellraw @a[tag=debug-tellraw] ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"selector":"@s"},{"text":"'s can't be launched, not ready.","color":"red"}]