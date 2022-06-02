execute if entity @s[tag=sh_main] run function sculk_hive:behavior/bossbar/control/sh_main

execute if entity @s[tag=sh_smn_cd] run execute if score @s sh_cd matches 0..360 run function sculk_hive:behavior/bossbar/control/bossbar_prep