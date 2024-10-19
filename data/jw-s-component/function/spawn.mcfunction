scoreboard players reset error jws-calc
tag @a[tag=debug] add target
tag @a[tag=debug-error] add target

$data modify storage jw-s:component data set value $(data)
$execute store result score error jws-calc run function jw-s-component:spawn/$(type) $(data)
execute if score error jws-calc matches 0 run tellraw @a[tag=target] {"text":"Spawn command returned an error. Please, check the data.","color":"red"}


tag @a remove target