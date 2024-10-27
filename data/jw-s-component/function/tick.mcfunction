# @as <component>
scoreboard players add @s jws-frame 1
execute as @s[tag=jws-particle] if score @s jws-frame >= @s jws-next_frame run function jw-s-component:tick/particle