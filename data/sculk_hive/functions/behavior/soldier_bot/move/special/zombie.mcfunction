summon zombie ~ ~-1.5 ~ {Tags:["sh_part","sh_sdr","sh_sdr_raw"], ArmorDropChances:[0f, 0f, 0f, 0f], ArmorItems:[{},{},{},{id:iron_helmet,Count:1b,tag:{Enchantments:[{id:protection,lvl:1s}],Unbreakable:1b}}], NoAI:1b, Invulnerable:1b, ActiveEffects:[{Id:11b, Amplifier:10b, Duration:2147483647, ShowParticles:0b}, {Id:12b, Duration:2147483647, ShowParticles:0b}], Air:32767s, Health:25.0f, Attributes:[{Name:generic.max_health,Base:25.0d},{Name:generic.armor,Base:2.0d},{Name:generic.knockback_resistance, Base:1.0d}],HandItems:[{id:stone_sword,Count:1b}], HandDropChances:[0f, 0f],PersistenceRequired:1b, DeathLootTable:"minecraft:empty"}

scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_sdr_count 1

execute as @e[tag=sh_sdr_raw] at @s if predicate sculk_hive:chance/04 run item replace entity @s weapon.mainhand with iron_sword
execute as @e[tag=sh_sdr_raw] at @s if predicate sculk_hive:chance/05 run enchant @s sharpness 1
execute as @e[tag=sh_sdr_raw] at @s if predicate sculk_hive:chance/03 run enchant @s fire_aspect 1
execute as @e[tag=sh_sdr_raw] at @s if predicate sculk_hive:chance/03 run enchant @s sharpness 3

execute as @e[tag=sh_sdr_raw] at @s run function sculk_hive:behavior/soldier/init