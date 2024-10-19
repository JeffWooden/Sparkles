# Lock function execution from other reload
scoreboard players set install jws-sys 1

# Server feedback
tellraw @a ["",{"text":"Sparkles >>","bold":true,"color":"blue"},{"text":" Datapack successfully installed."}]

# Scoreboard
scoreboard objectives add jws-debug dummy
scoreboard objectives add jws-calc dummy

# Variables