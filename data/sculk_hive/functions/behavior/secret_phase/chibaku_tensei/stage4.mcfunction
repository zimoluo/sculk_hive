execute if score @s sh_chit_timer matches 1.. run scoreboard players remove @s sh_chit_timer 1

execute if score @s sh_chit_timer matches 0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/ready_for_stage5

execute unless score @s sh_darkness_timer matches 0.. run scoreboard players set @s sh_darkness_timer 80
execute if score @s sh_darkness_timer matches 0.. run scoreboard players remove @s sh_darkness_timer 1
execute if score @s sh_darkness_timer matches 0 as @e[tag=sh_main,limit=1,sort=nearest] at @s as @a[tag=sh_atk, distance=..64] run effect give @s darkness 10 0 true