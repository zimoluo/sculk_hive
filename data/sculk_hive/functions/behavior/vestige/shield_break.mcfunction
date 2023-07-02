tag @s remove sh_guard_shield

data modify entity @s HandItems[1].id set value "minecraft:air"
data modify entity @s HandItems[1].Count set value 0b

playsound minecraft:item.shield.break hostile @a ~ ~1 ~ 2
execute rotated ~ 0 run particle item shield ^0.2 ^0.8 ^0.2 0.14 0.14 0.14 0.00001 15 force