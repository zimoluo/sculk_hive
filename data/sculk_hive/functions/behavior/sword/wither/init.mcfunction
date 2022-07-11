effect give @s strength 3 0
tag @e[distance=..10, type=#sculk_hive:monster_and_player] add sh_victim
tag @a[gamemode=!adventure, gamemode=!survival] remove sh_victim
tag @s remove sh_victim

scoreboard players set @s sh_cd 0
execute anchored eyes positioned ^ ^ ^ run function sculk_hive:behavior/sword/wither/find

tag @e remove sh_victim