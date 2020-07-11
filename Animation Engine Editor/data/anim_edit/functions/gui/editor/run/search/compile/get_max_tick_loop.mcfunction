scoreboard players reset $_keyframe_empty _anim
execute store result score $_comp_m_t _anim run data get storage anim:editor search[0].tick
#check if it's empty
execute store result score $v _anim run data get storage anim:editor search[0].rotate.head
execute store result score $_emp_body _anim run data get storage anim:editor search[0].rotate.body
execute store result score $_emp_r_arm _anim run data get storage anim:editor search[0].rotate.r_arm
execute store result score $_emp_l_arm _anim run data get storage anim:editor search[0].rotate.l_arm
execute store result score $_emp_r_leg _anim run data get storage anim:editor search[0].rotate.r_leg
execute store result score $_emp_l_leg _anim run data get storage anim:editor search[0].rotate.l_leg
execute store result score $_emp_pos _anim run data get storage anim:editor search[0].position
execute store result score $_emp_extra1 _anim run data get storage anim:editor current_keyframe.extra.head
execute store result score $_emp_extra2 _anim run data get storage anim:editor current_keyframe.extra.body
execute store result score $_emp_extra3 _anim run data get storage anim:editor current_keyframe.extra.r_arm
execute store result score $_emp_extra4 _anim run data get storage anim:editor current_keyframe.extra.l_arm
execute store result score $_emp_extra5 _anim run data get storage anim:editor current_keyframe.extra.legg
execute store result score $_emp_extra6 _anim run data get storage anim:editor current_keyframe.extra.boots
execute store result score $_emp_extra7 _anim run data get storage anim:editor current_keyframe.extra.invisible
execute store result score $_emp_extra8 _anim run data get storage anim:editor current_keyframe.extra.marker
execute store result score $_emp_extra9 _anim run data get storage anim:editor current_keyframe.extra.small
execute store result score $_emp_extra0 _anim run data get storage anim:editor current_keyframe.extra.arms
scoreboard players set $_emp_extra _anim 1
execute if score $_emp_extra1 _anim matches 0 if score $_emp_extra2 _anim matches 0 if score $_emp_extra3 _anim matches 0 if score $_emp_extra4 _anim matches 0 if score $_emp_extra5 _anim matches 0 if score $_emp_extra6 _anim matches 0 if score $_emp_extra7 _anim matches 0 if score $_emp_extra8 _anim matches 0 if score $_emp_extra9 _anim matches 0 if score $_emp_extra0 _anim matches 0 run scoreboard players set $_emp_extra _anim 0
#execute store result score $_emp_extra _anim run data get storage anim:editor search[0].extra
# set value $_keyframe_empty _anim to 1 if the keyframe data is empty
execute if score $_emp_head _anim matches 0 if score $_emp_body _anim matches 0 if score $_emp_r_arm _anim matches 0 if score $_emp_l_arm _anim matches 0 if score $_emp_r_leg _anim matches 0 if score $_emp_l_leg _anim matches 0 if score $_emp_pos _anim matches 0 if score $_emp_extra _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1
execute if score $_comp_m_t _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1

execute unless score $_keyframe_empty _anim matches 1 if score $_comp_m_t _anim > $comp_max_t _anim run scoreboard players operation $comp_max_t _anim = $_comp_m_t _anim
execute unless score $_keyframe_empty _anim matches 1 run data modify storage anim:editor result append from storage anim:editor search[0]
execute unless score $_keyframe_empty _anim matches 1 run scoreboard players add $comp_keyf _anim 1
execute if score $_keyframe_empty _anim matches 1 run scoreboard players add $comp_del_keyf _anim 1
execute if score $_keyframe_empty _anim matches 1 run tellraw @p[tag=anim_user] ["",{"text":"Deleted a bad keyframe ","color":"red"},{"text":"[Data]","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"nbt":"search[0]","storage":"anim:editor","color":"gray"}]}}]
data remove storage anim:editor search[0]
#continue the loop
execute if data storage anim:editor search[] run function anim_edit:gui/editor/run/search/compile/get_max_tick_loop