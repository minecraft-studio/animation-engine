execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor temp_get1 int 1 run data get storage anim:editor last_compile_keyframe.rotate.head.x.value 1000
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc1 _anim run data get storage anim:editor temp_get1
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run data remove storage anim:editor temp_get1
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc2 _anim run data get storage anim:editor last_compile_keyframe.rotate.head.x.tick
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim = $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim -= $_comp_calc1 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim = $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim -= $_comp_calc2 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_ease_add _anim = $_comp_value_add _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_ease_add _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim = $_comp_value_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick2 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim /= $2 _anim
execute store result storage anim:editor result_comp_tick.rotate.head.x.value float 0.001 run scoreboard players get $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor result_comp_tick_old.rotate.head.x.add float 0.001 run scoreboard players get $_comp_value_add _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} store result storage anim:editor result_comp_tick_old.rotate.head.x.ease_add float 0.001 run scoreboard players operation $_comp_value_ease_add _anim /= $_comp_value_tick2 _anim
execute store result storage anim:editor last_compile_keyframe.rotate.head.x.value float 0.001 run scoreboard players get $_comp_value _anim
execute store result storage anim:editor last_compile_keyframe.rotate.head.x.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor last_compile_keyframe.rotate.head.x.add float 0.001 run scoreboard players get $_comp_value_add _anim
