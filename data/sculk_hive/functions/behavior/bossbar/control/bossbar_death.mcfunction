bossbar set sculk_hive:health max 100
bossbar set sculk_hive:health value 0

execute if entity @s[tag=sh_fourth] run bossbar set sculk_hive:health color purple
execute unless entity @s[tag=sh_fourth] run bossbar set sculk_hive:health color red