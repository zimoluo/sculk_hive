scoreboard players set @s sh_constant 0
execute if predicate sculk_hive:chance/02 run scoreboard players add @s sh_constant 1
execute if predicate sculk_hive:chance/01 run scoreboard players add @s sh_constant 1
execute if predicate sculk_hive:chance/01 run scoreboard players add @s sh_constant 1
execute if predicate sculk_hive:chance/01 run scoreboard players add @s sh_constant 1

execute if score @s sh_constant matches 0 positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"baked_potato", Count:4b}}
execute if score @s sh_constant matches 1 positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"bread", Count:4b}}
execute if score @s sh_constant matches 2 positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"cooked_beef", Count:3b}}
execute if score @s sh_constant matches 3 positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"golden_apple", Count:3b}}
execute if score @s sh_constant matches 4 positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"enchanted_golden_apple", Count:2b}}

scoreboard players set @s sh_constant 0
execute if predicate sculk_hive:chance/02 run scoreboard players add @s sh_constant 1
execute if predicate sculk_hive:chance/01 run scoreboard players add @s sh_constant 1
execute if predicate sculk_hive:chance/01 run scoreboard players add @s sh_constant 1

execute if score @s sh_constant matches 0 positioned ~ ~1.3 ~-2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"rabbit_stew", Count:1b}}
execute if score @s sh_constant matches 1 positioned ~ ~1.3 ~-2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"potion", Count:1b, tag:{Potion:"minecraft:healing"}}}
execute if score @s sh_constant matches 2 positioned ~ ~1.3 ~-2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"potion", Count:1b, tag:{Potion:"minecraft:strong_healing"}}}
execute if score @s sh_constant matches 3 positioned ~ ~1.3 ~-2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"totem_of_undying", Count:1b}}

scoreboard players set @s sh_constant 0
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_constant 1

execute if score @s sh_constant matches 0 positioned ~2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"diamond_sword", Count:1b, tag:{Enchantments:[{id:"sharpness", lvl:2s}]}}}
execute if score @s sh_constant matches 0 positioned ~-2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"shield", Count:1b}}

execute if score @s sh_constant matches 1 positioned ~2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"bow", Count:1b, tag:{Enchantments:[{id:"power", lvl:3s}]}}}
execute if score @s sh_constant matches 1 positioned ~-2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"arrow", Count:64b}}

scoreboard players reset @s sh_constant