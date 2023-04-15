scoreboard players add @s sh_guard_conversion 1
execute if score @s sh_guard_conversion matches 300..600 anchored eyes run particle sculk_soul ^ ^ ^ 0.3 0.3 0.3 0.0001 2 force

execute if score @s sh_guard_conversion matches 600 run function sculk_hive:behavior/vestige/corruption/corrupt


execute unless predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/conversion/reset