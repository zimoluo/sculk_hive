execute positioned ~ ~-0.15 ~ run summon minecraft:zoglin ~ ~ ~ {NoAI:1b, Silent:1b, Tags:["sh_part","sh_sey_hp", "sh_hp_raw"], ActiveEffects:[{Id:11b, Amplifier:10b, Duration:-1, ShowParticles:0b}, {Id:14b, Duration:-1, ShowParticles:0b}, {Id:12b, Duration:-1, ShowParticles:0b}], Health:25.0f, Air:32767s, NoGravity:1b, Attributes:[{Name:generic.max_health,Base:25.0d},{Name:generic.armor,Base:1.0d},{Name:generic.knockback_resistance, Base:1.0d}],PersistenceRequired:1b, DeathLootTable:"minecraft:empty", Invulnerable:1b,CustomNameVisible:0b, CustomName:'{"color":"#006F75","text":"Sculk Hive","italic": false}'}

execute as @e[tag=sh_hp_raw] at @s run function sculk_hive:behavior/health_calc/set_new_hp