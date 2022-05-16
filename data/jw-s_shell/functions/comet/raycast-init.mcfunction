#> jw-s_shell:comet/raycast-init
#@context as <Shell:comet> at @s
#@within jw-s_shell:comet/main
#@input scoreboard
#       @s jw-s_swirlLength : nombre de blocs de distance (1 = 0.1 bloc)
#       @s jw-s_calc : tick pour donner la rotation

#  Longueur raycast
scoreboard players operation c jw-s_calc = @s jw-s_swirlLength
#  Index rotation raycast
scoreboard players operation @s jw-s_calc += @s jw-s_swirlDuration
scoreboard players operation t jw-s_calc = @s jw-s_calc
scoreboard players operation t jw-s_calc %= swirldDuration jw-s_var
#   Set direction raycast
function jw-s_shell:comet/raycast-rotations/l5/0-39