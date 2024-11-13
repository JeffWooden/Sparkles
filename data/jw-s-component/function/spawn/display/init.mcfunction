tag @s add jws-component
tag @s add jws-display

data modify entity @s data set from storage jw-s:sparkles component.data
scoreboard players add @s jws-frame 0
execute store result score @s jws-next_frame run data get entity @s data.updates.l[-1]