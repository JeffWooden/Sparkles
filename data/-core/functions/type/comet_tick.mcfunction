scoreboard objectives add ftemp dummy
execute store result score @s ftemp run data get entity @s Motion[1]
effect give @s[scores={ftemp=..0}] slow_falling 1 3 true
scoreboard objectives remove ftemp

scoreboard players add @s fireL 1
execute if score @s fireL >= @s fireLF run kill @s