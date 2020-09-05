tellraw @s ["",{"text":"Rotate","color":"gray","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/set_tab/rotate_1"}},{"text":" "},{"text":"Position","color":"gray","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/set_tab/position"}},{"text":" "},{"text":"Extra","underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/set_tab/extra_2"}},{"text":"\n "},{"text":"NBT Data","color":"light_purple","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/set_tab/extra_1"}},{"text":" "},{"text":"Change Item","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/set_tab/extra_2"}}]

# scoreboard players operation $_sel_row _anim = $_sel_row _anim
# scoreboard players operation $_sel_row _anim += $page_row _anim
# scoreboard players remove $_sel_row _anim 1

#>Inventory
function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part

tag @s add anim_render_extra2
#> > Head
# If value is set
execute if data storage anim:editor current_keyframe.extra.head unless data storage anim:editor {current_keyframe:{extra:{head:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.head.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.head.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.head.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head"}},{"nbt":"current_keyframe.extra.head.id","storage":"anim:editor","color":"#ffa2a2"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{head:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.head as @e[tag=anim_part_select] if data entity @s ArmorItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"ArmorItems[1].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"ArmorItems[1].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head"}},{"nbt":"ArmorItems[1].id","entity":"@s","color":"#ffa2a2"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.head as @e[tag=anim_part_select] unless data entity @s ArmorItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/head_reset"}}]

#> > Body
# If value is set
execute if data storage anim:editor current_keyframe.extra.body unless data storage anim:editor {current_keyframe:{extra:{body:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.body.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.body.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.body.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it\n(Some data may appear false, that is used by the Animation Engine Runtime and it's normal to happen)","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body"}},{"nbt":"current_keyframe.extra.body.id","storage":"anim:editor","color":"#a2a2ff"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{body:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item\nClick while holding an item to set it or hold nothing to reset it\n(Some data may appear false, that is used by the Animation Engine Runtime and it's normal to happen)","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.body as @e[tag=anim_part_select] if data entity @s ArmorItems[2].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"ArmorItems[2].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"ArmorItems[2].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it\n(Some data may appear false, that is used by the Animation Engine Runtime and it's normal to happen)","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body"}},{"nbt":"ArmorItems[2].id","entity":"@s","color":"#a2a2ff"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.body as @e[tag=anim_part_select] unless data entity @s ArmorItems[2].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data\nClick while holding an item to set it or hold nothing to reset it\n(Some data may appear false, that is used by the Animation Engine Runtime and it's normal to happen)","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/body_reset"}}]

#> > Right Arm
# If value is set
execute if data storage anim:editor current_keyframe.extra.r_arm unless data storage anim:editor {current_keyframe:{extra:{r_arm:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.r_arm.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.r_arm.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.r_arm.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm"}},{"nbt":"current_keyframe.extra.r_arm.id","storage":"anim:editor","color":"#d073d0"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{r_arm:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.r_arm as @e[tag=anim_part_select] if data entity @s HandItems[0].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"HandItems[0].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"HandItems[0].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"HandItems[0].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm"}},{"nbt":"HandItems[0].id","entity":"@s","color":"#d073d0"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.r_arm as @e[tag=anim_part_select] unless data entity @s HandItems[0].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/r_arm_reset"}}]

#> > Left Arm
# If value is set
execute if data storage anim:editor current_keyframe.extra.l_arm unless data storage anim:editor {current_keyframe:{extra:{l_arm:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.l_arm.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.l_arm.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.l_arm.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm"}},{"nbt":"current_keyframe.extra.l_arm.id","storage":"anim:editor","color":"#ffa2ff"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{l_arm:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.l_arm as @e[tag=anim_part_select] if data entity @s HandItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"HandItems[1].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"HandItems[1].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"HandItems[1].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm"}},{"nbt":"HandItems[1].id","entity":"@s","color":"#ffa2ff"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.l_arm as @e[tag=anim_part_select] unless data entity @s HandItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/l_arm_reset"}}]

#> > Leggings
# If value is set
execute if data storage anim:editor current_keyframe.extra.legg unless data storage anim:editor {current_keyframe:{extra:{legg:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.legg.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.legg.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.legg.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg"}},{"nbt":"current_keyframe.extra.legg.id","storage":"anim:editor","color":"#73d073"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{legg:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.legg as @e[tag=anim_part_select] if data entity @s ArmorItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"ArmorItems[1].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"ArmorItems[1].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg"}},{"nbt":"ArmorItems[1].id","entity":"@s","color":"#73d073"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.legg as @e[tag=anim_part_select] unless data entity @s ArmorItems[1].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/legg_reset"}}]

#> > Boots
# If value is set
execute if data storage anim:editor current_keyframe.extra.boots unless data storage anim:editor {current_keyframe:{extra:{boots:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"current_keyframe.extra.boots.id","storage":"anim:editor","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"current_keyframe.extra.boots.Count","storage":"anim:editor","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"current_keyframe.extra.boots.tag","storage":"anim:editor","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots"}},{"nbt":"current_keyframe.extra.boots.id","storage":"anim:editor","color":"#a2ffa2"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots_reset"}}]
# If value is set to reset
execute if data storage anim:editor {current_keyframe:{extra:{boots:1}}} run tellraw @p[tag=anim_render_extra2] [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand will remove it's item","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots"}},{"text":"reset","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots_reset"}}]
# If value is NOT set and armor stand has data
execute unless data storage anim:editor current_keyframe.extra.boots as @e[tag=anim_part_select] if data entity @s ArmorItems[0].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand set to have:\n","color":"green"},{"text":"id: ","color":"aqua"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"gray"},{"text":"\ncount: ","color":"aqua"},{"nbt":"ArmorItems[0].Count","entity":"@s","color":"gray"},{"text":"\ntag: ","color":"aqua"},{"nbt":"ArmorItems[0].tag","entity":"@s","color":"gray"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots"}},{"nbt":"ArmorItems[0].id","entity":"@s","color":"#a2ffa2"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots_reset"}}]
# If value is NOT set and armor stand does NOT have data
execute unless data storage anim:editor current_keyframe.extra.boots as @e[tag=anim_part_select] unless data entity @s ArmorItems[0].id run tellraw @p[tag=anim_render_extra2] [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Armor stand doesn't have any data","color":"green"},{"text":"\nClick while holding an item to set it or hold nothing to reset it","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots"}},{"text":"none","color":"gray"},"] ",{"text":"[X]","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the value","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/value_editor/extra/item/boots_reset"}}]

tag @s remove anim_render_extra2

scoreboard players set @s _anim_tab 10

# function anim_edit:gui/editor/value_editor/menu
#>Disable gamerule sendCommandFeedback if setting enabled
function anim_edit:gamerule