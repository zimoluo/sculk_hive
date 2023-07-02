playsound minecraft:item.shield.break hostile @a ~ ~1 ~ 2

execute unless predicate sculk_hive:behavior/shield_in_mainhand rotated ~ 0 run particle item shield ^0.2 ^0.8 ^0.2 0.14 0.14 0.14 0.00001 15 force
execute unless predicate sculk_hive:behavior/shield_in_mainhand run item replace entity @s weapon.offhand with air
execute unless predicate sculk_hive:behavior/shield_in_mainhand run return 0

execute rotated ~ 0 run particle item shield ^-0.2 ^0.8 ^0.2 0.14 0.14 0.14 0.00001 15 force
item replace entity @s weapon.mainhand with air