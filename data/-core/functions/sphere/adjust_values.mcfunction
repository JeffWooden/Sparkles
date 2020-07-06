scoreboard players set new ftemp 91
scoreboard players operation new ftemp -= newy ftemp
scoreboard players operation newy ftemp += new ftemp
#tellraw @a {"score":{"name":"new","objective":"ftemp"}}
scoreboard players reset new ftemp