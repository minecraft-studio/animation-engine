function anim_edit:search_part_editor
data modify storage anim:editor current_keyframe.extra.legg set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id run data modify storage anim:editor current_keyframe.extra.legg set value 1
execute as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[1] set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id if data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[1] set from storage anim:editor sel_anim_data.legg
execute unless data entity @s SelectedItem.id unless data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[1].id
function anim_edit:gui/editor/load