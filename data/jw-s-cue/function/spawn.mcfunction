scoreboard players reset error jws-calc
tag @a[tag=debug] add target
tag @a[tag=debug-error] add target

$data modify storage jw-s:sparkles components set from storage $(storage) $(path)
execute store result score l_comps jws-calc run data get storage jw-s:sparkles components
function jw-s-cue:loop
execute if score error jws-calc matches 0 run tellraw @a[tag=target] {"text":"Spawn command returned an error. Please, check the data.","color":"red"}


tag @a remove target