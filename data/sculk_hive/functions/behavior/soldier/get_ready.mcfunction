tag @s add sh_sdr_ready


data merge entity @s {Invulnerable:0b, NoAI: 0b}
effect clear @s resistance
execute if entity @s[type=skeleton_horse] as @e[tag=sh_rdr,distance=..1] at @s run data merge entity @s {Invulnerable:0b, NoAI: 0b}
execute if entity @s[type=skeleton_horse] as @e[tag=sh_rdr,distance=..1] at @s run effect clear @s resistance
execute if entity @s[type=!skeleton_horse] run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.4d

execute if entity @s[type=!skeleton_horse] unless entity @a[tag=sh_atk,distance=..32] if entity @e[tag=sh_atk,distance=..32] run damage @s 0.001 mob_attack by @e[tag=sh_atk,type=!player,limit=1,sort=nearest]

scoreboard players set @s sh_sdr_cd 400
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_sdr_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_sdr_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_sdr_cd 20