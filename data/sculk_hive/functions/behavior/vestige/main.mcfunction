execute unless entity @s[tag=sh_natural] unless predicate sculk_hive:vestige/in_vestige run tag @s add sh_natural
execute unless entity @s[tag=sh_natural] if predicate sculk_hive:vestige/in_vestige unless data storage sculk_hive:data {world: {difficulty: 0}} run function sculk_hive:behavior/vestige/transform

execute if entity @s[tag=sh_guard] run function sculk_hive:behavior/vestige/tick