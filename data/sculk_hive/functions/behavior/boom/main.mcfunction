function sculk_hive:behavior/boom/tick

execute unless entity @e[tag=sh_main,distance=..64,] unless entity @e[tag=sh_main, tag=sh_2nd, distance=..66] run function sculk_hive:behavior/boom/explode
execute unless entity @e[tag=sh_main,distance=..64] if entity @e[tag=sh_main, tag=sh_2nd, distance=..66] run function sculk_hive:behavior/boom/explode_2nd