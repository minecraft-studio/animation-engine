execute unless data storage anim:editor current_keyframe.extra.marker store result storage anim:editor current_keyframe.extra.marker int 1 as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data get entity @s Marker
execute if data storage anim:editor {current_keyframe:{extra:{marker:0}}} run data modify storage anim:editor current_keyframe.extra.marker set value 2
execute if data storage anim:editor {current_keyframe:{extra:{marker:1}}} run data modify storage anim:editor current_keyframe.extra.marker set value 0
execute if data storage anim:editor {current_keyframe:{extra:{marker:2}}} run data modify storage anim:editor current_keyframe.extra.marker set value 1
function anim_edit:gui/editor/run/text/tab/rotate