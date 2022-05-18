execute store result score @s sh_wdr_UUID_0 run data get entity @s UUID[0]
execute store result score @s sh_wdr_UUID_1 run data get entity @s UUID[1]
execute store result score @s sh_wdr_UUID_2 run data get entity @s UUID[2]
execute store result score @s sh_wdr_UUID_3 run data get entity @s UUID[3]

execute store result score @s sh_swd_UUID_0 run data get entity @s HandItems[0].tag.WielderUUID[0]
execute store result score @s sh_swd_UUID_1 run data get entity @s HandItems[0].tag.WielderUUID[1]
execute store result score @s sh_swd_UUID_2 run data get entity @s HandItems[0].tag.WielderUUID[2]
execute store result score @s sh_swd_UUID_3 run data get entity @s HandItems[0].tag.WielderUUID[3]

execute unless score @s sh_wdr_UUID_0 = @s sh_swd_UUID_0 run function sculk_hive:behavior/sword/wielder/punish
execute unless score @s sh_wdr_UUID_1 = @s sh_swd_UUID_1 run function sculk_hive:behavior/sword/wielder/punish
execute unless score @s sh_wdr_UUID_2 = @s sh_swd_UUID_2 run function sculk_hive:behavior/sword/wielder/punish
execute unless score @s sh_wdr_UUID_3 = @s sh_swd_UUID_3 run function sculk_hive:behavior/sword/wielder/punish