execute store result score @s sh_wdr_UUID_0 run data get entity @s Thrower[0]
execute store result score @s sh_wdr_UUID_1 run data get entity @s Thrower[1]
execute store result score @s sh_wdr_UUID_2 run data get entity @s Thrower[2]
execute store result score @s sh_wdr_UUID_3 run data get entity @s Thrower[3]

execute store result score @s sh_swd_UUID_0 run data get entity @s Item.tag.WielderUUID[0]
execute store result score @s sh_swd_UUID_1 run data get entity @s Item.tag.WielderUUID[1]
execute store result score @s sh_swd_UUID_2 run data get entity @s Item.tag.WielderUUID[2]
execute store result score @s sh_swd_UUID_3 run data get entity @s Item.tag.WielderUUID[3]

execute if score @s sh_wdr_UUID_0 = @s sh_swd_UUID_0 if score @s sh_wdr_UUID_1 = @s sh_swd_UUID_1 if score @s sh_wdr_UUID_2 = @s sh_swd_UUID_2 if score @s sh_wdr_UUID_3 = @s sh_swd_UUID_3 align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/sword/check_environment