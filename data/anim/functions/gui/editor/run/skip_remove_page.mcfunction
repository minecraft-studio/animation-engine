# save keyframes so the current keyframe selected is not lost
scoreboard players set $_no_deselect _anim 1
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim:gui/editor/run/save_keyframe

scoreboard players operation $_tmp_old_pg _anim = $_page _anim
scoreboard players remove $_page _anim 5
execute if score $_page _anim matches ..0 run scoreboard players set $_page _anim 1
function anim:gui/editor/run/refresh_keyframes