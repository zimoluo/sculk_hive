execute unless score @s sh_delete_tick matches 0..10 run function sculk_hive:behavior/general/schedule_delete/initialize
scoreboard players remove @s sh_delete_tick 1
execute if score @s sh_delete_tick matches ..0 run function sculk_hive:behavior/general/schedule_delete/remove