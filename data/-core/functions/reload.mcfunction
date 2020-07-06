# rennomer tous les objectifs avec f...
scoreboard objectives add fire dummy
scoreboard objectives add fireD dummy
scoreboard objectives add fireL dummy
scoreboard objectives add fireLF dummy
scoreboard objectives add fireCnt dummy
# a = activated
scoreboard players set a fire 0
# ct = current time
scoreboard players set ct fire 0
# d =delay
scoreboard players set d fire 20
# l = length
scoreboard players set l fire 0
# tB = time between
scoreboard players set tB fire 10
# reset Show cache
data remove storage fw:cache Temp
# tBF = time between fountain sub
scoreboard players set tBF fire 5
# vars
scoreboard players set #20 fire 20
scoreboard players set #-1 fire -1