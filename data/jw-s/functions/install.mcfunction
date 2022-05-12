tellraw @a ["",{"text":"Sparkles","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Play your firework show into the game.","color":"gray","italic":false}}},{"text":" >> "},{"text":"Datapack successfully installed","color":"green"},{"text":"."}]
# scoreboard players set #installed jw-s_calc 1

#   Tableaux
scoreboard objectives add jw-s_fuse dummy
scoreboard objectives add jw-s_id dummy
scoreboard objectives add jw-s_life dummy
scoreboard objectives add jw-s_partId dummy
scoreboard objectives add jw-s_partOption dummy
scoreboard objectives add jw-s_type dummy
scoreboard objectives add jw-s_var dummy

#   Constantes
scoreboard players set elder_beamMaxLength jw-s_var 200
scoreboard players set beamMaxLength jw-s_var 200
scoreboard players set cometDefaultLife jw-s_var 200
scoreboard players set beamDefaultLength jw-s_var 60
scoreboard players set fountainJetDefaultLife jw-s_var 200