tag @s[tag=!sh_2nd] add sh_2nd

tag @s add sh_final

scoreboard players set @s sh_last_max_hp 0

execute as @a[tag=sh_eff] at @s anchored eyes run particle flash ^ ^ ^ 0.01 0.01 0.01 0.0001 3 force @s

function sculk_hive:behavior/attack/rage/final

execute as @e[tag=sh_atk] run scoreboard players set @s sh_boom_cd 180

execute positioned ~ ~-0.15 ~ run summon minecraft:zoglin ~ ~ ~ {NoAI:1b, Silent:1b, Tags:["sh_part","sh_final_hp"], ActiveEffects:[{Id:14b, Duration:2147483647, ShowParticles:0b}, {Id:12b, Duration:2147483647, ShowParticles:0b}], Health:100.0f, Air:32767s, NoGravity:1b, Attributes:[{Name:generic.max_health,Base:100.0d},{Name:generic.armor,Base:5.0d},{Name:generic.knockback_resistance, Base:1.0d}],PersistenceRequired:1b, DeathLootTable:"minecraft:empty"}

summon marker ~ ~1.2 ~ {Tags:["sh_part","sh_spr_tgt"]}

kill @e[tag=sh_shd]

tag @s remove sh_phs

gamerule doWardenSpawning true