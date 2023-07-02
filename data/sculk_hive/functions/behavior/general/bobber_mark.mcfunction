tag @s add sh_temp_1010

execute on origin if entity @s[type=player,advancements={sculk_hive:util/has_sculk_hive_diary=true,sculk_hive:util/has_vestige_diary=true}] run tag @e[tag=sh_temp_1010] add sh_bobber_with_diary

tag @s remove sh_temp_1010

tag @s add sh_bobber_marked