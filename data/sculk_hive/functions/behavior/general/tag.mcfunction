execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk_normal

execute as @e[type=!player, type=!#sculk_hive:non-attack, type=!#sculk_hive:undead] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk
execute as @e[type=!player, type=!#sculk_hive:non-attack, type=!#sculk_hive:undead] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk_normal
execute as @e[type=#sculk_hive:undead] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk
execute as @e[type=#sculk_hive:undead] at @s if entity @e[tag=sh_main,distance=..32] run tag @s add sh_atk_undead

execute as @e[tag=sh_atk] at @s unless entity @e[tag=sh_main,distance=..32] run tag @s remove sh_atk
execute as @e[tag=sh_atk_normal] at @s unless entity @e[tag=sh_main,distance=..32] run tag @s remove sh_atk_normal
execute as @e[tag=sh_atk_undead] at @s unless entity @e[tag=sh_main,distance=..32] run tag @s remove sh_atk_undead

function sculk_hive:behavior/general/tag_fourth

tag @a[gamemode=!adventure, gamemode=!survival, tag=sh_atk] remove sh_atk
tag @a[gamemode=!adventure, gamemode=!survival, tag=sh_atk_normal] remove sh_atk_normal
tag @a[gamemode=!adventure, gamemode=!survival, tag=sh_attracted] remove sh_attracted

execute as @a at @s if entity @e[tag=sh_main, distance=..32] run tag @s add sh_eff
execute as @a at @s if entity @e[tag=sh_smn, distance=..32] run tag @s add sh_eff
execute as @a at @s unless entity @e[tag=sh_main, distance=..32] unless entity @e[tag=sh_smn, distance=..32] run tag @s remove sh_eff

tag @e[type=#sculk_hive:non-attack] remove sh_atk
tag @e[nbt={Invulnerable:1b}] remove sh_atk
tag @e[tag=sh_guard] remove sh_atk
tag @e[tag=sh_part] remove sh_atk

execute as @e[type=armor_stand] if data entity @s {ArmorItems:[{}, {tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}, {}, {}]} unless data entity @s {Marker:1b} unless data entity @s {Invisible:1b} at @s if entity @e[tag=sh_main, distance=..32] run tag @s add sh_atk
execute as @e[type=armor_stand] if data entity @s {ArmorItems:[{}, {tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}, {}, {}]} unless data entity @s {Marker:1b} unless data entity @s {Invisible:1b} at @s if entity @e[tag=sh_fourth, distance=..40] run tag @s add sh_atk

tag @e[tag=!sh_atk] remove sh_sta
tag @e[tag=!sh_atk] remove sh_bite
tag @e[tag=!sh_atk] remove sh_boomed
tag @e[tag=!sh_atk] remove sh_atk_undead
tag @e[tag=!sh_atk] remove sh_atk_normal
tag @e[tag=!sh_atk] remove sh_attracted

execute as @e[tag=sh_attracted] at @s unless entity @e[tag=sh_chit,distance=..50] run tag @s remove sh_attracted
tag @e[tag=!sh_attracted] remove sh_attracted_needed_beam
tag @e[tag=!sh_attracted] remove sh_attracted_cannot_escape
tag @e[tag=!sh_attracted] remove sh_attracted_strong
tag @e[tag=!sh_attracted] remove sh_attracted_timed