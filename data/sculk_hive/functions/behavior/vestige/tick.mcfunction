data merge entity @s {FallDistance: 0.0f}
data merge entity @s[type=zombie] {InWaterTime: -2147483648, DrownedConversionTime: -2147483648, TicksFrozen: 0}
execute if entity @s[type=skeleton] if block ~ ~ ~ powder_snow run setblock ~ ~ ~ air destroy
execute if entity @s[type=skeleton] if block ~ ~1 ~ powder_snow run setblock ~ ~1 ~ air destroy

execute if entity @s[tag=sh_guard_soul] positioned ~-1.5 ~-1 ~-1.5 run effect give @e[type=!#sculk_hive:guard_wither_ignore, dx=2, dz=2, dy=3, tag=!sh_part, tag=!sh_guard] wither 4 0
execute if entity @s[tag=sh_guard_soul] positioned ~-1.5 ~-1 ~-1.5 run effect give @a[gamemode=!creative, gamemode=!spectator, dx=2, dz=2, dy=3] wither 4 0
execute if entity @s[tag=sh_guard_soul] run particle sculk_soul ~ ~1.3 ~ 0.3 0.45 0.3 0.00001 1 force

execute if entity @s[tag=sh_guard_shield] store result score @s sh_hp run data get entity @s Health
execute if entity @s[tag=sh_guard_shield] if score @s sh_hp matches ..18 run function sculk_hive:behavior/vestige/shield_break