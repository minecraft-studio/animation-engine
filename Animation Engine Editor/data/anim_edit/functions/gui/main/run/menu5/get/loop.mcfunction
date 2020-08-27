#
#>Searches through animations and selects them 
function anim_edit:gui/main/run/menu5/get_anim/start

#>if found add text to the list with info about the anim_part
# If not selected
execute if score $_get_search _anim matches 1 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel1"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 2 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel2"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 3 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel3"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 4 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel4"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 5 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel5"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 6 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel6"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
execute if score $_get_search _anim matches 7 unless score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel7"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"}]
# If selected
execute if score $_get_search _anim matches 1 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel1"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 2 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel2"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 3 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel3"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 4 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel4"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 5 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel5"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 6 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel6"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]
execute if score $_get_search _anim matches 7 if score $_id_search _anim = @s _anim_anim_id if data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"white","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/sel7"},"hoverEvent":{"action": "show_text","contents":[{"text":"Click to open the animation","color":"gray"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"anim_data.name","storage":"anim:editor"}]

#>else if not found, add text with 'none' to the list 
execute if score $_get_search _anim matches 1 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name1 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 2 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name2 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 3 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name3 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 4 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name4 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 5 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name5 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 6 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name6 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]
execute if score $_get_search _anim matches 7 unless data storage anim:editor anim_data run tellraw @s [{"text":" ","color":"gray","clickEvent":{"action": "suggest_command","value": "/data modify storage anim:editor new_anim_name7 set value \"Unammed Animation\""},"hoverEvent":{"action": "show_text","contents":[{"text":"Animation with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to give it a name and open it in the editor"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". Empty"]

#>Prepare for another search
scoreboard players add $_get_search _anim 1
scoreboard players add $_id_search _anim 1
execute if score $_get_search _anim matches ..7 run function anim_edit:gui/main/run/menu5/get/loop