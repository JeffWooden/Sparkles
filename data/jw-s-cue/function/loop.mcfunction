function jw-s-component:spawn with storage jw-s:components components[-1]
data remove storage jw-s:components components[-1]
scoreboard players remove l jws-calc 1
execute if score l jws-calc matches 1.. run function jw-s-cue:loop