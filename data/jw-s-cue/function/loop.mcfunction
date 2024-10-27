function jw-s-component:call {"storage":"jw-s:sparkles","path":"components[-1]"}
data remove storage jw-s:sparkles components[-1]
scoreboard players remove l_comps jws-calc 1
execute if score l_comps jws-calc matches 1.. run function jw-s-cue:loop