execute if score @s sh_cd matches 0.. run scoreboard players add @s sh_cd 1

execute if score @s sh_cd matches 0..500 run function sculk_hive:behavior/general/bossbar_prep

execute if score @s sh_cd matches 120 run function sculk_hive:summon/prep/1
execute if score @s sh_cd matches 120 run function sculk_hive:summon/prep/1_5
execute if score @s sh_cd matches 120..500 run function sculk_hive:summon/prep/soul
execute if score @s sh_cd matches 300 run function sculk_hive:summon/prep/2
execute if score @s sh_cd matches 300..500 run function sculk_hive:summon/prep/soul_flame
execute if score @s sh_cd matches 500 run function sculk_hive:summon/prep/final

execute if score @s sh_cd matches 0..499 run function sculk_hive:summon/detect_interrupt

execute unless entity @a[distance=..128] run function sculk_hive:behavior/despawn/disappear