bossbar set sculk_hive:health players @a[distance=..32]
bossbar set sculk_hive:health max 159
execute store result bossbar sculk_hive:health value run scoreboard players get @s sh_phase_cd

execute if score @s sh_phase_cd matches 0..160 run scoreboard players add @s sh_phase_cd 1
execute if score @s[tag=sh_2nd] sh_phase_cd matches 160 run function sculk_hive:behavior/general/final/trigger
execute if score @s[tag=!sh_2nd] sh_phase_cd matches 160 run function sculk_hive:behavior/general/2nd_phase/trigger