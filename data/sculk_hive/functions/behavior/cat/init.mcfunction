scoreboard players set @s sh_cat_span 4
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_cat_span 1

function sculk_hive:behavior/cat/reset_ttl

execute positioned ~ ~-0.15 ~ run summon minecraft:zoglin ~ ~ ~ {NoAI:1b, Silent:1b, Tags:["sh_part", "sh_cat_hp", "sh_hp_raw", "sh_attackable"], active_effects:[{Id:"invisibility", Duration:-1, ShowParticles:0b}, {Id:"fire_resistance", Duration:-1, ShowParticles:0b}], Health:60.0f, Air:32767s, NoGravity:1b, Attributes:[{Name:generic.max_health,Base:60.0d},{Name:generic.armor,Base:2.0d},{Name:generic.knockback_resistance, Base:1.0d}],PersistenceRequired:1b, DeathLootTable:"minecraft:empty",CustomNameVisible:0b, CustomName:'{"color":"#006F75","text":"Sculk Hive","italic": false}'}

execute as @e[tag=sh_hp_raw] at @s run function sculk_hive:behavior/health_calc/set_new_hp

tag @s remove sh_cat_raw