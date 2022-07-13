item replace entity @s armor.chest with air
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.head with air
item replace entity @s weapon.mainhand with stone_sword
execute if predicate sculk_hive:chance/04 run item replace entity @s weapon.mainhand with iron_sword
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/02 run item replace entity @s[type=zombie] weapon.mainhand with iron_axe
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/04 run item replace entity @s[type=zombie] weapon.mainhand with iron_axe
execute if predicate sculk_hive:chance/05 run item replace entity @s[type=skeleton] weapon.mainhand with bow{Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:flame",lvl:1s}]}

execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/04 run enchant @s power 3
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/03 run enchant @s power 3
execute if predicate sculk_hive:chance/03 run enchant @s power 2
enchant @s power 1

execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/04 run enchant @s sharpness 3
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/03 run enchant @s sharpness 3
execute if predicate sculk_hive:chance/03 run enchant @s sharpness 2
enchant @s sharpness 1

execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/05 run enchant @s fire_aspect 2
execute if predicate sculk_hive:chance/05 run enchant @s fire_aspect 1

execute if predicate sculk_hive:chance/025 run enchant @s unbreaking 1
execute if predicate sculk_hive:chance/025 run enchant @s unbreaking 2
execute if predicate sculk_hive:chance/01 run enchant @s unbreaking 3

execute if predicate sculk_hive:chance/01 run enchant @s mending

execute if predicate sculk_hive:chance/03 run enchant @s knockback 1

execute if predicate sculk_hive:chance/01 run enchant @s looting 3
execute if predicate sculk_hive:chance/01 run enchant @s looting 2

attribute @s generic.max_health base set 40
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/02 run attribute @s generic.max_health modifier add bbb9305f-84c9-4074-a334-d11b5117c571 "You're the chosen one" 5 add
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/033 run attribute @s generic.max_health modifier add bbb9305f-84c9-4074-a334-d11b5117c571 "You're the chosen one" 5 add
data merge entity @s[type=zombie] {IsBaby: 0b, CanBreakDoors:1b}
data merge entity @s[type=skeleton] {StrayConversionTime: -2147483648}

attribute @s generic.movement_speed base set 0.3
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/025 run attribute @s generic.movement_speed modifier add d8423f64-4232-4588-9993-86e53d1a87dc "Fast guy" 0.02 add
attribute @s generic.attack_damage base set 5.0
attribute @s generic.knockback_resistance base set 0.2
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/025 run attribute @s generic.knockback_resistance modifier add d8e089ea-0ef1-43aa-85c5-b4e3dabe971b "Tough guy" 0.15 add
attribute @s generic.attack_knockback base set 0.1
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/02 run attribute @s generic.attack_knockback modifier add 6de3d271-83a6-497e-bcf5-9ac0b59c6aaa "Beating!!!" 0.2 add
attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
attribute @s generic.armor base set 3.0
attribute @s generic.armor_toughness base set 1.0

item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:1s}, {id:"minecraft:projectile_protection",lvl:1s}], Unbreakable:1b}

execute if data storage sculk_hive:data {world:{difficulty: 1}} if predicate sculk_hive:chance/02 run function sculk_hive:behavior/vestige/upgrades/chest
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/03 run function sculk_hive:behavior/vestige/upgrades/chest
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/04 run function sculk_hive:behavior/vestige/upgrades/chest
execute if data storage sculk_hive:data {world:{difficulty: 1}} if predicate sculk_hive:chance/01 run function sculk_hive:behavior/vestige/upgrades/shield
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/02 run function sculk_hive:behavior/vestige/upgrades/shield
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/03 run function sculk_hive:behavior/vestige/upgrades/shield
execute if data storage sculk_hive:data {world:{difficulty: 1}} if predicate sculk_hive:chance/01 run tag @s add sh_guard_soul
execute if data storage sculk_hive:data {world:{difficulty: 2}} if predicate sculk_hive:chance/02 run tag @s add sh_guard_soul
execute if data storage sculk_hive:data {world:{difficulty: 3}} if predicate sculk_hive:chance/033 run tag @s add sh_guard_soul


effect give @s fire_resistance 999999 0 true
data merge entity @s {ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f], HandDropChances:[0.01f, 0.0f], PersistenceRequired: 0b, DeathLootTable:"sculk_hive:entities/guard", Fire:-20s, CanPickUpLoot: 0b}

effect clear @s wither

execute store result entity @s Health float 1 run attribute @s generic.max_health get

tag @s add sh_natural
tag @s add sh_guard