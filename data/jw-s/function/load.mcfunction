scoreboard objectives add jws-sys dummy
scoreboard players add install jws-sys 0
execute if score install jws-sys matches 0 run function jw-s:install