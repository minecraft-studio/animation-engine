scoreboard players operation $_ida_lookup _anim = @s _anim_ida
execute store result score @s _anim_calc as @e[tag=anim_main] if score @s _anim_ida = $_ida_lookup _anim run data get entity @s Pos[0] 1000
scoreboard players operation @s _anim_px_value += @s _anim_px
# tellraw @p ["",{"score":{"name": "@s","objective": "_anim_px_value"}}]
# tellraw @p ["_anim_calc: ",{"score": {"objective": "_anim_calc","name": "@s"}}]
# tellraw @p ["_anim_px_value: ",{"score": {"objective": "_anim_px_value","name": "@s"}}]
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_px_value
# execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_px_value
scoreboard players operation @s _anim_px += @s _anim_px_ease
scoreboard players reset @s _anim_calc
scoreboard players reset $_ida_lookup _anim