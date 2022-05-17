scoreboard players set @s sh_cat_span -1

function sculk_hive:behavior/cat/reset_ttl

execute positioned ~ ~-0.15 ~ run summon minecraft:zoglin ~ ~ ~ {NoAI:1b, Silent:1b, Tags:["sh_part", "sh_cat_hp"], ActiveEffects:[{Id:14b, Duration:2147483647, ShowParticles:0b}, {Id:12, Duration:2147483647, ShowParticles:0b}], Health:150.0f, Air:32767s, NoGravity:1b, Attributes:[{Name:generic.max_health,Base:150.0d},{Name:generic.armor,Base:3.5d},{Name:generic.knockback_resistance, Base:1.0d}], PersistenceRequired:1b, DeathLootTable:"minecraft:empty"}

tag @s remove sh_cat_raw