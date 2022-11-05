function sculk_hive:behavior/general/pos
function sculk_hive:behavior/general/team
function sculk_hive:behavior/general/tick

function sculk_hive:behavior/general/blocks/center_shrieker

function sculk_hive:behavior/general/count_cat
function sculk_hive:behavior/general/count_soldier

execute unless entity @s[tag=sh_dth] unless entity @s[tag=sh_fourth] run function sculk_hive:behavior/general/blocks/detect
execute if entity @s[tag=sh_dth] run function sculk_hive:behavior/general/blocks/detect_dth
execute if entity @s[tag=sh_fourth] run function sculk_hive:behavior/general/blocks/detect_dth

execute unless entity @s[tag=sh_phs] unless entity @s[tag=sh_dth] unless entity @s[tag=sh_2nd] run function sculk_hive:behavior/attack/main

execute if entity @s[tag=sh_phs, tag=!sh_phs_secret] run function sculk_hive:behavior/general/interphase
execute if entity @s[tag=sh_phs_secret] run function sculk_hive:behavior/general/interphase_secret

execute if entity @s[tag=sh_fourth] run function sculk_hive:behavior/secret_phase/progress

execute unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] unless entity @s[tag=fourth] run function sculk_hive:behavior/general/regen/tick

execute unless entity @s[tag=sh_dth] if data storage sculk_hive:data {world: {difficulty: 0}} run function sculk_hive:behavior/despawn/disappear
execute unless entity @s[tag=sh_dth] if data storage sculk_hive:data {world:{mobGriefing:0b}} run function sculk_hive:behavior/despawn/disappear

execute unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] unless entity @s[tag=sh_final] unless entity @s[tag=sh_fourth] run function sculk_hive:behavior/general/soul
execute if entity @s[tag=sh_final] unless entity @s[tag=sh_dth] unless entity @s[tag=sh_fourth] run function sculk_hive:behavior/general/soul_big
execute if entity @s[tag=sh_phs] run function sculk_hive:behavior/general/soul_small
execute if entity @s[tag=sh_dth] run function sculk_hive:behavior/general/soul_dth
execute if entity @s[tag=sh_fourth, tag=!sh_dth] run function sculk_hive:behavior/general/soul_fourth

execute unless entity @s[tag=sh_phs] unless entity @e[tag=sh_cat, distance=..64] unless entity @s[tag=sh_2nd] if entity @e[tag=sh_kck, distance=..64] run function sculk_hive:behavior/general/2nd_phase/init
execute unless entity @s[tag=sh_phs] if entity @s[tag=sh_2nd] unless entity @e[tag=sh_sey, distance=..64] unless entity @s[tag=sh_final] run function sculk_hive:behavior/general/final/init
execute unless entity @s[tag=sh_phs] unless entity @e[tag=sh_cat, distance=..64] unless entity @s[tag=sh_2nd] unless entity @e[tag=sh_kck, distance=..64] run function sculk_hive:behavior/general/secret_phase/init
execute unless data storage sculk_hive:data {world: {difficulty: 3}} unless entity @s[tag=sh_dth] if entity @s[tag=sh_final] unless entity @s[tag=sh_secret] unless entity @e[tag=sh_final_hp,distance=..0.16] run function sculk_hive:behavior/despawn/defeat/init
execute if data storage sculk_hive:data {world: {difficulty: 3}} unless entity @s[tag=sh_dth] if entity @s[tag=sh_final] unless entity @s[tag=sh_secret] unless entity @e[tag=sh_final_hp,distance=..0.16] run function sculk_hive:behavior/secret_phase/init_in_hard_mode
execute unless entity @s[tag=sh_dth] if entity @s[tag=sh_final] if entity @s[tag=sh_secret] unless entity @s[tag=sh_fourth] unless entity @e[tag=sh_final_hp,distance=..0.16] run function sculk_hive:behavior/secret_phase/init
execute if entity @s[tag=sh_dth] run function sculk_hive:behavior/despawn/defeat/tick

execute unless entity @s[tag=sh_phs] unless entity @s[tag=sh_dth] if score @s sh_bossfight matches 360.. unless entity @s[tag=sh_2nd] run function sculk_hive:behavior/soldier_attack/main
execute unless entity @s[tag=sh_phs] unless entity @s[tag=sh_dth] if entity @s[tag=sh_2nd] unless entity @s[tag=sh_final] run function sculk_hive:behavior/soldier_attack/main
execute unless entity @s[tag=sh_phs] unless entity @s[tag=sh_dth] unless entity @s[tag=sh_fourth] if entity @s[tag=sh_secret] run function sculk_hive:behavior/soldier_attack/main