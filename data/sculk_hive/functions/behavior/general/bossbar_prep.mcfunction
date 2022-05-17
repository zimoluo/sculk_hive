bossbar set sculk_hive:health players @a[distance=..32]

bossbar set sculk_hive:health color blue
bossbar set sculk_hive:health max 499

execute store result bossbar sculk_hive:health value run scoreboard players get @s sh_cd