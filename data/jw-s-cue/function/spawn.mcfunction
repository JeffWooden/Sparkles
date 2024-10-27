scoreboard players reset error jws-calc
tag @a[tag=debug] add target
tag @a[tag=debug-error] add target

$data modify storage jw-s:components components set value $(components)
execute store result score l jws-calc run data get storage jw-s:components components
function jw-s-cue:loop
execute if score error jws-calc matches 0 run tellraw @a[tag=target] {"text":"Spawn command returned an error. Please, check the data.","color":"red"}


tag @a remove target