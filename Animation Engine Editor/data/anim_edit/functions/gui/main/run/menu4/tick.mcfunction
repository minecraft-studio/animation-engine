# Set a custom name to anim model
execute if score $_curr_air _anim matches 1 as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players reset $_curr_air _anim
execute if data storage anim:editor anim_model_cname unless score $_curr_air _anim matches 1 run function anim_edit:gui/main/run/menu4/custom_model_name