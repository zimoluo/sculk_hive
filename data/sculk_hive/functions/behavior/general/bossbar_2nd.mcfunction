bossbar set sculk_hive:health players @a[distance=..32]

bossbar set sculk_hive:health color pink

scoreboard players set @s sh_hp 0
scoreboard players set @s sh_max_hp 0

execute as @e[tag=sh_sey_hp] store result score @s sh_hp run data get entity @s Health
execute as @e[tag=sh_sey_hp] store result score @s sh_max_hp run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

execute as @e[tag=sh_sey_hp] run scoreboard players operation @e[tag=sh_main] sh_hp += @s sh_hp
execute as @e[tag=sh_sey_hp] run scoreboard players operation @e[tag=sh_main] sh_max_hp += @s sh_max_hp

execute unless score @s sh_max_hp <= @s sh_last_max_hp store result bossbar sculk_hive:health max run scoreboard players get @s sh_max_hp
execute unless score @s sh_max_hp <= @s sh_last_max_hp run scoreboard players operation @s sh_last_max_hp = @s sh_max_hp
execute store result bossbar sculk_hive:health value run scoreboard players get @s sh_hp