function sculk_hive:main/parameter

function sculk_hive:summon/general_control

execute as @e[tag=sh_smn_cd] at @s if data storage sculk_hive:data {world: {difficulty: 0}} run function sculk_hive:behavior/despawn/interrupted
execute as @e[tag=sh_smn_cd] at @s if data storage sculk_hive:data {world:{mobGriefing:0b}} run function sculk_hive:behavior/despawn/interrupted

execute as @e[tag=sh_main] at @s run function sculk_hive:behavior/general/main

execute as @e[tag=sh_scheduled_delete] at @s run function sculk_hive:behavior/general/schedule_delete/tick

execute as @e[tag=sh_cat] at @s run function sculk_hive:behavior/cat/main
execute as @e[tag=sh_bot] at @s run function sculk_hive:behavior/cat_bot/main
execute as @e[tag=sh_kck] at @s run function sculk_hive:behavior/sentry/knocked/main
execute as @e[tag=sh_sey] at @s run function sculk_hive:behavior/sentry/main
execute as @e[tag=sh_boom] at @s run function sculk_hive:behavior/boom/main
execute as @e[tag=sh_shd] at @s run function sculk_hive:behavior/shield/main
execute as @e[tag=sh_2nd, tag=!sh_final, tag=!sh_dth, tag=!sh_phs] at @s as @e[tag=sh_atk, distance=..64] at @s run function sculk_hive:behavior/laser_weak_attack/tick
execute as @e[tag=sh_final, tag=!sh_dth, tag=!sh_fourth] at @s as @e[tag=sh_atk, distance=..64] at @s run function sculk_hive:behavior/final_attack/ultra/tick
execute as @e[tag=sh_ultra_boom] at @s run function sculk_hive:behavior/ultra_boom/main
execute as @e[tag=sh_final, tag=!sh_dth, tag=!sh_fourth] at @s run function sculk_hive:behavior/final_attack/absorb_warden/detect
execute as @e[tag=sh_spr] at @s run function sculk_hive:behavior/final_attack/warden_spirit/move
execute as @e[tag=sh_laser] at @s run function sculk_hive:behavior/laser/main
execute as @e[tag=sh_laser_weak] at @s run function sculk_hive:behavior/laser_weak/main
execute as @e[tag=sh_sdr, tag=!sh_scheduled_delete] at @s run function sculk_hive:behavior/soldier/main
execute as @e[tag=sh_sdr_bot] at @s run function sculk_hive:behavior/soldier_bot/main
execute as @e[tag=sh_rdr] at @s run function sculk_hive:behavior/soldier/horseman/rider

execute as @e[type=item,nbt={Item:{tag:{IsSculkSword: 1b}}}] at @s run function sculk_hive:behavior/sword/main
execute as @e[type=item,nbt={Item:{tag:{isSculkHiveDiary: 1b}}}] at @s run function sculk_hive:behavior/general/diary
execute as @e[type=#sculk_hive:wielder,tag=!sh_dpy] at @s run function sculk_hive:behavior/sword/wielder/main
execute as @e[tag=sh_prep_ctrl] at @s run function sculk_hive:behavior/sword/prep_ctrl/main
execute as @a[advancements={sculk_hive:util/kill_monster=true}] at @s run function sculk_hive:behavior/sword/any/kill
execute as @a[advancements={sculk_hive:util/kill_monster=false, sculk_hive:util/hit_monster=true}] at @s run function sculk_hive:behavior/sword/any/hit

execute as @e[tag=sh_cat_hp] at @s align xyz positioned ~0.5 ~1 ~0.5 run function sculk_hive:behavior/general/hp_prevent_suffocate
execute as @e[tag=sh_sey_hp] at @s align xyz positioned ~0.5 ~1 ~0.5 run function sculk_hive:behavior/general/hp_prevent_suffocate
execute as @e[tag=sh_final_hp] at @s align xyz positioned ~0.5 ~1 ~0.5 run function sculk_hive:behavior/general/hp_prevent_suffocate
execute as @e[tag=sh_chit] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/main
execute as @e[tag=sh_parabola] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/main
execute as @e[tag=sh_fire_trap] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/tick

execute if score LOOP sh_constant matches 0..99 run scoreboard players add LOOP sh_constant 1
execute unless score LOOP sh_constant matches 0..99 run function sculk_hive:main/loop_5s/reset

execute as @e[type=potion,nbt={Item:{tag:{isDarkBrew:1b}}}] at @s if entity @e[tag=sh_guard,tag=!sh_scheduled_delete,tag=!sh_guard_despawn,distance=..4] run function sculk_hive:behavior/vestige/potion_set

execute as @a[tag=sh_potion_thrower] run function sculk_hive:behavior/vestige/potion_player

execute as @e[type=#sculk_hive:guard, tag=!sh_purified, tag=!sh_scheduled_delete, tag=!sh_part] at @s run function sculk_hive:behavior/vestige/main

execute unless data storage sculk_hive:data {world:{difficulty:0}} as @e[type=#sculk_hive:vestige_vulnerable, tag=sh_converting, tag=!sh_part, tag=!sh_purified, tag=!sh_scheduled_delete] at @s run function sculk_hive:behavior/vestige/corruption/converting
execute if data storage sculk_hive:data {world:{difficulty:0}} as @e[type=#sculk_hive:vestige_vulnerable, tag=!sh_purified, tag=!sh_scheduled_delete] at @s run function sculk_hive:behavior/vestige/conversion/reset

execute as @e[tag=sh_vestige_spawner] at @s if loaded ~ ~ ~ run function sculk_hive:behavior/vestige/spawner/format

execute as @e[type=fishing_bobber,tag=!sh_bobber_marked] run function sculk_hive:behavior/general/bobber_mark

execute as @e[type=arrow,nbt={HasBeenShot:0b}] at @s on origin if entity @s[tag=sh_midas] run tag @e[type=arrow,limit=1,sort=nearest,distance=..0.1,nbt={HasBeenShot:0b}] add sh_midas_arrow
execute as @e[tag=sh_midas_arrow] at @s run function sculk_hive:behavior/midas/arrow/tick

execute as @e[scores={sh_midas_tick=0..}] at @s run function sculk_hive:behavior/midas/effect/tick

function sculk_hive:behavior/bossbar/main