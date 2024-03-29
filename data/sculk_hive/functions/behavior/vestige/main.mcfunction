execute unless entity @s[tag=sh_natural] unless predicate sculk_hive:vestige/in_vestige run tag @s add sh_natural
execute unless entity @s[tag=sh_natural] if predicate sculk_hive:vestige/in_vestige unless data storage sculk_hive:data {world: {difficulty: 0}} run function sculk_hive:behavior/vestige/transform

execute if entity @s[tag=sh_natural, tag=!sh_guard] if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/conversion/tick
execute if entity @s[tag=sh_natural, tag=!sh_guard, tag=sh_converting] unless predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/conversion/reset

execute if entity @s[tag=sh_guard] unless entity @s[tag=sh_guard_despawn] run function sculk_hive:behavior/vestige/tick

execute if entity @s[tag=sh_guard] if entity @s[tag=sh_guard_despawn] run function sculk_hive:behavior/vestige/despawn_tick

execute if entity @s[tag=sh_guard] if predicate sculk_hive:vestige/in_vestige unless entity @s[tag=sh_guard_despawn] run scoreboard players set @s sh_cd 0
execute if entity @s[tag=sh_guard] if entity @e[tag=sh_vestige_spawn_center,distance=..128] unless entity @s[tag=sh_guard_despawn] run scoreboard players set @s sh_cd 0
execute if entity @s[tag=sh_guard] unless predicate sculk_hive:vestige/in_vestige unless entity @e[tag=sh_vestige_spawn_center,distance=..128] unless entity @s[tag=sh_guard_despawn] run scoreboard players add @s sh_cd 1

execute if entity @s[tag=sh_guard] if score @s sh_cd matches 100.. unless entity @s[tag=sh_guard_despawn] run function sculk_hive:behavior/vestige/prepare_despawn

execute if entity @s[tag=sh_guard, tag=sh_guard_has_seen_potion] run function sculk_hive:behavior/vestige/potion_tick
execute if entity @s[tag=sh_guard, tag=sh_guard_potion_gone] run function sculk_hive:behavior/vestige/see_if_poisoned