item replace entity @s weapon.mainhand with stone_sword
execute if predicate sculk_hive:chance/04 run item replace entity @s weapon.mainhand with iron_sword
execute if predicate sculk_hive:chance/025 run item replace entity @s[type=zombie] weapon.mainhand with iron_axe
execute if predicate sculk_hive:chance/05 run item replace entity @s[type=skeleton] weapon.mainhand with bow{Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:flame",lvl:1s}]}

execute if predicate sculk_hive:chance/03 run enchant @s power 3
execute if predicate sculk_hive:chance/03 run enchant @s power 2
enchant @s power 1

execute if predicate sculk_hive:chance/03 run enchant @s sharpness 3
execute if predicate sculk_hive:chance/03 run enchant @s sharpness 2
enchant @s sharpness 1

execute if predicate sculk_hive:chance/02 run enchant @s fire_aspect 2
execute if predicate sculk_hive:chance/05 run enchant @s fire_aspect 1

execute if predicate sculk_hive:chance/025 run enchant @s unbreaking 1
execute if predicate sculk_hive:chance/025 run enchant @s unbreaking 2
execute if predicate sculk_hive:chance/01 run enchant @s unbreaking 3

execute if predicate sculk_hive:chance/01 run enchant @s mending

execute if predicate sculk_hive:chance/03 run enchant @s knockback 1

execute if predicate sculk_hive:chance/01 run enchant @s looting 3
execute if predicate sculk_hive:chance/01 run enchant @s looting 2

attribute @s generic.max_health base set 40
data merge entity @s {Health:40.0f}
data merge entity @s[type=zombie] {IsBaby: 0b, CanBreakDoors:1b}
data merge entity @s[type=skeleton] {StrayConversionTime: -2147483648}

attribute @s generic.movement_speed base set 0.3
attribute @s generic.attack_damage base set 5.0
attribute @s generic.knockback_resistance base set 0.2
attribute @s generic.attack_knockback base set 0.1
attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
attribute @s generic.armor base set 3.0
attribute @s generic.armor_toughness base set 1.0

item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:1s}, {id:"minecraft:projectile_protection",lvl:1s}], Unbreakable:1b}

execute if predicate sculk_hive:chance/03 run function sculk_hive:behavior/vestige/upgrades/chest
execute if predicate sculk_hive:chance/025 run function sculk_hive:behavior/vestige/upgrades/shield
execute if predicate sculk_hive:chance/025 run tag @s add sh_guard_soul


effect give @s fire_resistance 999999 0 true
data merge entity @s {ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f], HandDropChances:[0.01f, 0.0f], PersistenceRequired: 0b, DeathLootTable:"sculk_hive:entities/guard", Fire:-20s, CanPickUpLoot: 0b}

effect clear @s wither

tag @s add sh_natural
tag @s add sh_guard