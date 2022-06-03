bossbar set sculk_hive:health max 159
execute store result bossbar sculk_hive:health value run scoreboard players get @s sh_phase_cd

execute if entity @s[tag=!sh_2nd] run bossbar set sculk_hive:health color pink
execute if entity @s[tag=sh_2nd] run bossbar set sculk_hive:health color red