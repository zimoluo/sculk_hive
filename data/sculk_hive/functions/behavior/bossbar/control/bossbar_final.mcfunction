bossbar set sculk_hive:health color red

execute store result bossbar sculk_hive:health max run attribute @e[tag=sh_final_hp,limit=1,sort=nearest] generic.max_health get
execute store result bossbar sculk_hive:health value run data get entity @e[tag=sh_final_hp,limit=1,sort=nearest] Health