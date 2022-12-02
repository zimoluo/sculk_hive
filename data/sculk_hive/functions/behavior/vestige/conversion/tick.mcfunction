execute if entity @s[type=skeleton] if data entity @s {StrayConversionTime: -1} if predicate sculk_hive:vestige/in_vestige run tag @s add sh_converting
execute if entity @s[type=zombie] if data entity @s {InWaterTime: -1, IsBaby: 0b, DrownedConversionTime: -1} if predicate sculk_hive:vestige/in_vestige run tag @s add sh_converting

execute if entity @s[type=skeleton] unless data entity @s {StrayConversionTime: -1} run function sculk_hive:behavior/vestige/conversion/reset
execute if entity @s[type=zombie] unless data entity @s {InWaterTime: -1} run function sculk_hive:behavior/vestige/conversion/reset
execute if entity @s[type=zombie] unless data entity @s {IsBaby: 0b} run function sculk_hive:behavior/vestige/conversion/reset
execute if entity @s[type=zombie] unless data entity @s {DrownedConversionTime: -1} run function sculk_hive:behavior/vestige/conversion/reset
execute unless predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/conversion/reset

execute if entity @s[tag=sh_converting] run scoreboard players add @s sh_guard_conversion 1
execute if entity @s[tag=sh_converting] if score @s sh_guard_conversion matches 300..600 run particle sculk_soul ~ ~1 ~ 0.3 0.6 0.3 0.0001 2 force

execute if entity @s[tag=sh_converting] if score @s sh_guard_conversion matches 600 run function sculk_hive:behavior/vestige/conversion/convert