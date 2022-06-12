execute align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/sword/detect

execute unless entity @s[tag=sh_swd] run function sculk_hive:behavior/sword/convert

data merge entity @s {Health:32767s, Fire:-32768s, Invulnerable:1b}

execute if data entity @s {Item:{tag:{HasWielder:1b}}} run data merge entity @s {Owner:[I; 0,0,0,0]}
execute if data entity @s {Item:{tag:{HasWielder:1b}}} run data modify entity @s Owner set from entity @s Item.tag.WielderUUID

execute if entity @s[tag=!sh_htbk] if data entity @s {OnGround:1b} unless data entity @s {Item:{tag:{StrongFaith:1b}}} align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ enchanting_table if block ~ ~-1 ~ netherite_block if block ~1 ~-1 ~ #sculk_hive:sword_upgrade_decor if block ~-1 ~-1 ~ #sculk_hive:sword_upgrade_decor if block ~ ~-1 ~1 #sculk_hive:sword_upgrade_decor if block ~ ~-1 ~-1 #sculk_hive:sword_upgrade_decor positioned ~ ~0.8 ~ run function sculk_hive:behavior/sword/upgrade
execute if entity @s[tag=!sh_htbk] if data entity @s {OnGround:1b, Item:{tag:{HasWielder:1b}}} unless data entity @s {Item:{tag:{StrongFaith:1b}}} run function sculk_hive:behavior/sword/judge

execute if entity @s[tag=!sh_htbk] unless data entity @s {Item:{tag:{StrongFaith:1b}}} run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.0001 1 force
execute if entity @s[tag=!sh_htbk] if data entity @s {Item:{tag:{StrongFaith:1b}}} if predicate sculk_hive:chance/05 run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.0001 1 force

execute if entity @s[tag=!sh_htbk] if data entity @s {OnGround:1b, Item:{tag:{HasWielder:1b}}} run function sculk_hive:behavior/sword/check_if_owner_died

execute if entity @s[tag=sh_htbk] run function sculk_hive:behavior/sword/tick