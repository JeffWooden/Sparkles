tag @s add jws-component
tag @s add jws-display

data modify entity @s data set from storage jw-s:sparkles component.data
scoreboard players add @s jws-frame 0
execute store result score @s jws-next_frame run data get entity @s data.updates.l[-1]

scoreboard players add $display_max jws-calc 1
scoreboard players operation @s jws-id = $display_max jws-calc
execute summon block_display run function jw-s-component:spawn/display/init_block_display