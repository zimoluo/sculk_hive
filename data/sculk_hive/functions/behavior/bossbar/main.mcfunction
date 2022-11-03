execute unless entity @e[tag=sh_main] unless entity @e[tag=sh_smn_cd] run bossbar set sculk_hive:health visible false
execute if entity @e[tag=sh_main] run bossbar set sculk_hive:health visible true
execute if entity @e[tag=sh_smn_cd] run bossbar set sculk_hive:health visible true

tag @e[tag=sh_main] add sh_bar
tag @e[tag=sh_smn_cd] add sh_bar

execute as @e[tag=sh_bar] at @s if entity @a[gamemode=!spectator, distance=..32] run tag @s add sh_bar_can

execute as @e[tag=sh_bar_can, limit=1] run tag @s add sh_bar_only

execute as @e[tag=sh_bar_only] at @s run function sculk_hive:behavior/bossbar/control/general

execute as @a[gamemode=!spectator] at @s if entity @e[tag=sh_bar_only, distance=..32] run tag @s add sh_bar_display

bossbar set sculk_hive:health players @a[tag=sh_bar_display]

tag @a remove sh_bar_display
tag @e[tag=sh_bar] remove sh_bar
tag @e[tag=sh_bar_can] remove sh_bar_can
tag @e[tag=sh_bar_only] remove sh_bar_only