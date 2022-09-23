#> jw-s_shell:sound/play
#@context as <Marker:sound> at @s
#@input tag "target"

data modify entity @s Pos set from entity @s data.Pos
execute at @s run tp @s ~ ~ ~
execute at @s[scores={jw-s_var=1}] run playsound sparkle:mortar ambient @a[tag=target] ~ ~ ~ 1 1 1
execute at @s[scores={jw-s_var=2}] run playsound sparkle:tube ambient @a[tag=target] ~ ~ ~ 1 1 1
execute at @s[scores={jw-s_var=3}] run playsound sparkle:huge-tube ambient @a[tag=target] ~ ~ ~ 1 1 1
scoreboard players set @s jw-s_life 0