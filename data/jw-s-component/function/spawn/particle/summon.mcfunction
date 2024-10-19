summon marker ~ ~ ~ {Tags:["jws-component","jws-particle","init"]}
execute as @e[type=marker,tag=jws-component,tag=jws-particle,tag=init,limit=1] run function jw-s-component:spawn/particle/init

scoreboard players remove l jws-calc 1
execute if score l jws-calc matches 1.. run function jw-s-component:spawn/particle/summon