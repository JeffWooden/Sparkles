tag @s add jws-child
tag @s add jws-display
scoreboard players operation @s jws-id = $display_max jws-calc

data modify entity @s block_state set from storage jw-s:sparkles component.data.display_settings.block_state