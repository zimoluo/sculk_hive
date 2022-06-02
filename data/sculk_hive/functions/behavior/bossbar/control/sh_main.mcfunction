execute unless entity @s[tag=sh_phs] if entity @s[tag=!sh_2nd] run function sculk_hive:behavior/bossbar/control/bossbar
execute unless entity @s[tag=sh_phs] if entity @s[tag=sh_2nd] unless entity @s[tag=sh_final] run function sculk_hive:behavior/bossbar/control/bossbar_2nd
execute unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] if entity @s[tag=sh_final] run function sculk_hive:behavior/bossbar/control/bossbar_final
execute if entity @s[tag=sh_phs] run function sculk_hive:behavior/bossbar/control/bossbar_phase
execute if entity @s[tag=sh_dth] run bossbar set sculk_hive:health max 100
execute if entity @s[tag=sh_dth] run bossbar set sculk_hive:health value 0