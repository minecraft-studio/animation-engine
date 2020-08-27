execute unless data storage anim:editor got_tick run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe/row4
execute unless data storage anim:editor got_tick if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe_sel/row4
execute if data storage anim:editor got_tick run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe_open/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.head run function anim_edit:gui/editor/keyframe_editor/render_keyframe/head/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.body run function anim_edit:gui/editor/keyframe_editor/render_keyframe/body/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_arm run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_arm/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_arm run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_arm/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_leg run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_leg/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_leg run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_leg/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.rotation run function anim_edit:gui/editor/keyframe_editor/render_keyframe/rotation/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.position run function anim_edit:gui/editor/keyframe_editor/render_keyframe/pos/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.head if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/head_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.body if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/body_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_arm if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_arm_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_arm if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_arm_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_leg if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_leg_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_leg if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_leg_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.rotation if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/rotation_sel/row4
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.position if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/pos_sel/row4
execute unless data storage anim:editor got_tick.head unless data storage anim:editor got_tick.body unless data storage anim:editor got_tick.l_arm unless data storage anim:editor got_tick.r_arm unless data storage anim:editor got_tick.l_leg unless data storage anim:editor got_tick.r_leg unless data storage anim:editor got_tick.rotation unless data storage anim:editor got_tick.position run scoreboard players set $_key_empty _anim 1
execute if data storage anim:editor got_tick if score @s _anim_id_player = $_got_p_id _anim unless score $_key_empty _anim matches 1 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/keyframe_open/row4
scoreboard players reset $_key_empty _anim