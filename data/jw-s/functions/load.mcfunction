#   Installation générale
scoreboard objectives add jw-s_calc dummy
execute unless score #installed jw-s_calc matches 1 run function jw-s:install

#   Vérification présence bibliothèque
#@todo intégrer lien github vers le téléchargement de la bibliothèque
scoreboard players reset #library jw-s_calc
function #jw-s:check_library
execute unless score #library jw-s_calc matches 1 run scoreboard players reset #library-message jw-s_calc
execute unless score #library jw-s_calc matches 1 run tellraw @a ["",{"text":"Sparkles","bold":true},{"text":" >> "},{"text":"No library found. Please, note that some effects will not work efficiently.","color":"red"}]