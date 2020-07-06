execute at @s run tp @s ^ ^ ^0.1
execute at @s[scores={fireL=..20}] run tp @s ^ ^ ^0.1
execute at @s[scores={fireL=20..},tag=gravity] run tp @s ~ ~0.15 ~
scoreboard players add @s fireL 1
execute as @s run function -core:particles