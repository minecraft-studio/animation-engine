data modify storage anim:editor current_keyframe.extra.legg set from entity @p[tag=anim_user] SelectedItem
execute unless data entity @p[tag=anim_user] SelectedItem.id run data modify storage anim:editor current_keyframe.extra.legg set value "none"
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data modify entity @s ArmorItems[1] set from entity @p[tag=anim_user] SelectedItem
execute unless data entity @p[tag=anim_user] SelectedItem.id if data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data modify entity @s ArmorItems[1] set from storage anim:editor sel_anim_data.legg
execute unless data entity @p[tag=anim_user] SelectedItem.id unless data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data remove entity @s ArmorItems[1]
function anim_edit:gui/editor/run/text/tab/rotate