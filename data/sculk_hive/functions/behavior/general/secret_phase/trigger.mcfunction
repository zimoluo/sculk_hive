tag @s[tag=!sh_2nd] add sh_2nd

tag @s add sh_final
tag @s add sh_secret

scoreboard players set @s sh_highest_max_hp 0

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle flash ^ ^ ^ 0.01 0.01 0.01 0.0001 3 force @s

execute as @e[tag=sh_atk, distance=..64] run function sculk_hive:behavior/general/reset_atk_scoreboard

function sculk_hive:behavior/attack/rage/final

execute as @e[tag=sh_atk, distance=..64] run scoreboard players set @s sh_boom_cd 160
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5
execute as @e[tag=sh_atk, distance=..64] if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 5

execute positioned ~ ~-0.15 ~ run summon minecraft:zoglin ~ ~ ~ {NoAI:1b, Silent:1b, Tags:["sh_part","sh_final_hp", "sh_hp_raw", "sh_secret_hp"], ActiveEffects:[{Id:14b, Duration:2147483647, ShowParticles:0b}, {Id:12b, Duration:2147483647, ShowParticles:0b}], Health:125.0f, Air:32767s, NoGravity:1b, Attributes:[{Name:generic.max_health,Base:125.0d},{Name:generic.armor,Base:8.0d},{Name:generic.knockback_resistance, Base:1.0d}],PersistenceRequired:1b, DeathLootTable:"minecraft:empty"}

execute as @e[tag=sh_hp_raw] at @s run function sculk_hive:behavior/health_calc/set_new_hp

function sculk_hive:behavior/health_calc/add_hp/secret_addition
scoreboard players operation @s sh_final_hp_addition = @s sh_dynamic_hp_entry
function sculk_hive:behavior/health_calc/add_hp/secret_max
scoreboard players operation @s sh_final_hp_max = @s sh_dynamic_hp_entry

kill @e[tag=sh_shd, distance=..64]

tag @s remove sh_phs
tag @s remove sh_phs_secret

function sculk_hive:behavior/general/shrieker_on