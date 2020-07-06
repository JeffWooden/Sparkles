execute store result score @s[tag=fw] fireCnt run data get entity @s FireworksItem.tag.bdb.count
execute store result score @s[tag=fw.bdb_sub] fireCnt run data get entity @s ArmorItems[2].tag.fw.bdb.count
execute as @s at @s run function -core:bdb/summon