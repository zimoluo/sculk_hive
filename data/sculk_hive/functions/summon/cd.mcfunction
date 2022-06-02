execute if score @s sh_cd matches 0.. run scoreboard players add @s sh_cd 1

execute if score @s sh_cd matches 120 run function sculk_hive:summon/prep/1
execute if score @s sh_cd matches 120 run function sculk_hive:summon/prep/1_5
execute if score @s sh_cd matches 120..360 run function sculk_hive:summon/prep/soul
execute if score @s sh_cd matches 240 run function sculk_hive:summon/prep/2
execute if score @s sh_cd matches 240..360 run function sculk_hive:summon/prep/soul_flame
execute if score @s sh_cd matches 360 run function sculk_hive:summon/prep/final

execute if score @s sh_cd matches 0..359 run function sculk_hive:summon/detect_interrupt