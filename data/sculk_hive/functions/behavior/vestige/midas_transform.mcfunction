item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:3s}], display:{Name:'{"text":"Midas Bow","color":"#FFD700","italic":false}'}, HideFlags:255}

tag @s add sh_midas

item replace entity @s armor.head with golden_helmet{Enchantments:[{id:"blast_protection", lvl:4s}, {id:"binding_curse", lvl:1s}], Unbreakable:1b, Trim:{material:"gold", pattern: "wayfinder"}, display:{Name:'{"text":"Midas Helmet","color":"#FFD700","italic":false}'}, isGuardianHelmet:1b}

item replace entity @s armor.chest with golden_chestplate{AttributeModifiers:[{Name: "Midas", AttributeName:"minecraft:generic.armor",Amount: 12.0, Operation: 0, Slot:"chest", UUID:[I;-1623373971,-1055374012,-20907132,1716046]}, {Name: "Midas is Tough", AttributeName:"minecraft:generic.armor_toughness",Amount: 5.0, Operation: 0, Slot:"chest", UUID:[I;-1623373971,-1055374012,-20907132,1716046]}, {Name: "Midas is Slow", AttributeName:"minecraft:generic.movement_speed",Amount: -0.15, Operation: 0, Slot:"chest", UUID:[I;-1623373971,-1055374012,-20907132,1716046]},{Name: "Midas is Powerful", AttributeName:"minecraft:generic.attack_damage",Amount: 5, Operation: 0, Slot:"chest", UUID:[I;-1623373971,-1055374012,-20907132,1716046]}, {Name: "Midas is Resistant", AttributeName:"minecraft:generic.knockback_resistance",Amount: 1.0, Operation: 0, Slot:"chest", UUID:[I;-1623373971,-1055374012,-20907132,1716046]}], Unbreakable:1b, Enchantments:[{id:"projectile_protection", lvl:8s}, {id:"binding_curse", lvl:1s}], Trim:{material:"gold", pattern: "eye"}, display:{Name:'{"text":"Midas Chestplate","color":"#FFD700","italic":false}'}, isGuardianChestplate:1b}

attribute @s generic.max_health base set 100
data merge entity @s {StrayConversionTime: -2147483648}
attribute @s generic.movement_speed base set 0.3
attribute @s generic.attack_damage base set 5.0
attribute @s generic.knockback_resistance base set 1.0
attribute @s generic.attack_knockback base set 0.5

attribute @s generic.armor base set 1.0
attribute @s generic.armor_toughness base set 1.0
attribute @s generic.follow_range base set 24

effect give @s fire_resistance infinite 0 true
effect clear @s wither
data merge entity @s {PersistenceRequired: 0b}

data merge entity @s {ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f], HandDropChances:[0.0f, 0.0f], DeathLootTable:"sculk_hive:entities/midas", Fire:-20s, CanPickUpLoot: 0b}

execute store result entity @s Health float 1 run attribute @s generic.max_health get

tag @s add sh_natural
tag @s add sh_guard