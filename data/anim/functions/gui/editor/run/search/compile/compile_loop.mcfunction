#render bossbar, get number of keyframes done / left
# FIX: PROPER CALC... maybe?
execute store result score $_comp_kleft _anim run data get storage anim:editor search_comp
#execute store result bossbar _anim_prgbar value run scoreboard players operation $_comp_kleft _anim -= $_comp_kmax _anim
bossbar set _anim_prgbar name ["",{"text":"Compiling... ","color":"yellow"},{"text":"(","color":"gray"},{"score":{"name":"$_comp_kleft","objective":"_anim"},"color":"yellow"},{"text":" left","color":"gold"},{"text":")","color":"gray"}]

#calc number of ticks
scoreboard players add $_get_tick _anim 1
scoreboard players set $_get_part _anim 1
# FIX: ADD PART SUPPORT, FOR NOW NOTHING ABOUT IT
# To add part support, it will make compile array for each part stored in chestplate tag.
function anim:gui/editor/run/search/get_tick_data/start

data remove storage anim:editor result_comp_tick
execute if data storage anim:editor result_get run say found
execute unless data storage anim:editor result_get run say not found...?
execute if data storage anim:editor result_get run function anim:gui/editor/run/search/compile/compile_found



scoreboard players add $_comp_loop _anim 1
execute if score $_comp_kleft _anim matches 1.. if score $_get_tick _anim matches 1..10 unless score $_comp_loop _anim > $sett_compile _anim run function anim:gui/editor/run/search/compile/compile_loop
execute if score $_comp_kleft _anim matches 1.. if score $_get_tick _anim matches 1..10 if score $_comp_loop _anim > $sett_compile _anim run schedule function anim:gui/editor/run/search/compile/compile_loop 1t
execute if score $_comp_kleft _anim matches 1.. if score $_get_tick _anim matches 1..10 if score $_comp_loop _anim > $sett_compile _anim run scoreboard players set $_comp_loop _anim 1
#say compile/loop