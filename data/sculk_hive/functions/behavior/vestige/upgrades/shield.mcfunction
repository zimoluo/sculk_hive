item replace entity @s weapon.offhand with shield{BlockEntityTag:{Base:15,Patterns:[{Color:8,Pattern:"bo"},{Color:7,Pattern:"flo"},{Color:0,Pattern:"flo"}]}, AttributeModifiers:[{Name: "Super Soldier", AttributeName:"minecraft:generic.armor",Amount: 15.0, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]}, {Name: "Super Soldier is Tough", AttributeName:"minecraft:generic.armor_toughness",Amount: 6.0, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]}, {Name: "Super Soldier is Slow", AttributeName:"minecraft:generic.movement_speed",Amount: -0.09, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]}, {Name: "Super Soldier is Resistant", AttributeName:"minecraft:generic.knockback_resistance",Amount: 1, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]},{Name: "Super Soldier is Powerful", AttributeName:"minecraft:generic.attack_damage",Amount: 5.0, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]}, {Name: "Super Soldier is Healthy", AttributeName:"minecraft:generic.max_health",Amount: 10.0, Operation: 0, Slot:"offhand", UUID:[I;-1623373971,-1055374012,-2090532864,105399952]}], Unbreakable:1b, Enchantments:[{id:"projectile_protection", lvl:4s}, {id:"thorns", lvl:2s}]}
data merge entity @s {Health: 50.0f}

tag @s add sh_guard_shield