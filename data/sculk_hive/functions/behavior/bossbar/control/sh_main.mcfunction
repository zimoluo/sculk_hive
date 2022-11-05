execute unless entity @s[tag=sh_phs] if entity @s[tag=!sh_2nd] run function sculk_hive:behavior/bossbar/control/bossbar
execute unless entity @s[tag=sh_phs] if entity @s[tag=sh_2nd] unless entity @s[tag=sh_final] run function sculk_hive:behavior/bossbar/control/bossbar_2nd
execute unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] if entity @s[tag=sh_final] unless entity @s[tag=sh_fourth] run function sculk_hive:behavior/bossbar/control/bossbar_final
execute if entity @s[tag=sh_fourth, tag=!sh_dth] run function sculk_hive:behavior/bossbar/control/bossbar_fourth
execute if entity @s[tag=sh_phs, tag=!sh_phs_secret, tag=!sh_dth] run function sculk_hive:behavior/bossbar/control/bossbar_phase
execute if entity @s[tag=sh_phs_secret, tag=!sh_dth] run function sculk_hive:behavior/bossbar/control/bossbar_phase_secret
execute if entity @s[tag=sh_dth] run function sculk_hive:behavior/bossbar/control/bossbar_death