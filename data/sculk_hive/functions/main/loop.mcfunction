function sculk_hive:main/parameter

function sculk_hive:summon/general_control

execute as @e[tag=sh_smn] at @s run function sculk_hive:behavior/general/tag
execute as @e[tag=sh_smn_cd] at @s if data storage sculk_hive:data {world: {difficulty: 0}} run function sculk_hive:behavior/despawn/disappear
execute as @e[tag=sh_main] at @s run function sculk_hive:behavior/general/main

execute as @e[tag=sh_cat] at @s run function sculk_hive:behavior/cat/main
execute as @e[tag=sh_bot] at @s run function sculk_hive:behavior/cat_bot/main
execute as @e[tag=sh_kck] at @s run function sculk_hive:behavior/sentry/knocked/main
execute as @e[tag=sh_sey] at @s run function sculk_hive:behavior/sentry/main
execute as @e[tag=sh_boom] at @s run function sculk_hive:behavior/boom/main
execute as @e[tag=sh_shd] at @s run function sculk_hive:behavior/shield/main
execute if entity @e[tag=sh_final, tag=!sh_dth] as @e[tag=sh_atk] at @s run function sculk_hive:behavior/final_attack/ultra/tick
execute as @e[tag=sh_ultra_boom] at @s run function sculk_hive:behavior/ultra_boom/main
execute as @e[tag=sh_final, tag=!sh_dth] at @s run function sculk_hive:behavior/final_attack/absorb_warden/detect
execute as @e[tag=sh_spr] at @s run function sculk_hive:behavior/final_attack/warden_spirit/move
execute as @e[tag=sh_laser] at @s run function sculk_hive:behavior/laser/main
execute as @e[tag=sh_sdr] at @s run function sculk_hive:behavior/soldier/main
execute as @e[tag=sh_sdr_bot] at @s run function sculk_hive:behavior/soldier_bot/main
execute as @e[tag=sh_rdr] at @s run function sculk_hive:behavior/soldier/horseman/rider
execute as @e[type=item,nbt={Item:{tag:{IsSculkSword: 1b}}}] at @s run function sculk_hive:behavior/sword/main
execute as @e[type=#sculk_hive:wielder,tag=!sh_dpy] at @s run function sculk_hive:behavior/sword/wielder/main
execute as @e[tag=sh_prep_ctrl] at @s run function sculk_hive:behavior/sword/prep_ctrl/main
execute as @a[advancements={sculk_hive:util/kill_monster=true}] at @s run function sculk_hive:behavior/sword/any/advancement
execute as @a[advancements={sculk_hive:util/kill_monster=false, sculk_hive:util/hit_monster=true}] at @s run function sculk_hive:behavior/sword/any/hit