summon skeleton_horse ~ ~-2.5 ~ {Tags:["sh_part","sh_sdr","sh_sdr_raw"], Tame:1b, NoAI:1b, Invulnerable:1b, active_effects:[{id:"resistance", amplifier:10b, duration:-1, show_particles:0b}, {id:"fire_resistance", duration:-1, show_particles:0b}], Air:32767s, Health:50.0f, Attributes:[{Name:generic.max_health,Base:50.0d},{Name:generic.armor,Base:5.0d},{Name:generic.knockback_resistance, Base:1.0d}],HandDropChances:[0f, 0f],PersistenceRequired:1b, DeathLootTable:"minecraft:empty", Passengers:[{id:skeleton, Tags:["sh_part","sh_rdr","sh_rdr_raw"], NoAI:1b, Invulnerable:1b, active_effects:[{id:"resistance", amplifier:10b, duration:-1, show_particles:0b}, {id:"fire_resistance", duration:-1, show_particles:0b}], Air:32767s, Health:50.0f, Attributes:[{Name:generic.max_health,Base:50.0d},{Name:generic.armor,Base:5.0d},{Name:generic.knockback_resistance, Base:1.0d},{Name:generic.follow_range,Base:32.0d}], ArmorDropChances:[0f, 0f, 0f, 0f], ArmorItems:[{},{},{},{id:iron_helmet,Count:1b,tag:{Enchantments:[{id:protection,lvl:1s},{id:"binding_curse", lvl:1s}],Unbreakable:1b, Trim:{material:"iron", pattern: "wayfinder"}}}],HandItems:[{id:bow,Count:1b}], HandDropChances:[0f, 0f],PersistenceRequired:1b, DeathLootTable:"minecraft:empty"}]}

scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_sdr_count 1

execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/05 run item replace entity @s weapon.mainhand with iron_sword
execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/08 run enchant @s flame 1
execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/04 run enchant @s power 1
execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/03 run enchant @s power 3

execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/07 run enchant @s sharpness 1
execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/04 run enchant @s fire_aspect 1
execute as @e[tag=sh_rdr_raw] at @s if predicate sculk_hive:chance/04 run enchant @s sharpness 3

execute as @e[tag=sh_rdr_raw] at @s run tag @s remove sh_rdr_raw

execute as @e[tag=sh_sdr_raw] at @s run function sculk_hive:behavior/soldier/init