tag @s add sh_temp
scoreboard players set @s sh_swd_count 0

execute as @e[type=#sculk_hive:wielder] store result score @s sh_wdr_UUID_0 run data get entity @s UUID[0]
execute as @e[type=#sculk_hive:wielder] store result score @s sh_wdr_UUID_1 run data get entity @s UUID[1]
execute as @e[type=#sculk_hive:wielder] store result score @s sh_wdr_UUID_2 run data get entity @s UUID[2]
execute as @e[type=#sculk_hive:wielder] store result score @s sh_wdr_UUID_3 run data get entity @s UUID[3]

execute store result score @s sh_swd_UUID_0 run data get entity @s Item.tag.WielderUUID[0]
execute store result score @s sh_swd_UUID_1 run data get entity @s Item.tag.WielderUUID[1]
execute store result score @s sh_swd_UUID_2 run data get entity @s Item.tag.WielderUUID[2]
execute store result score @s sh_swd_UUID_3 run data get entity @s Item.tag.WielderUUID[3]

execute as @e[type=#sculk_hive:wielder] if score @s sh_wdr_UUID_0 = @e[tag=sh_temp,limit=1] sh_swd_UUID_0 if score @s sh_wdr_UUID_1 = @e[tag=sh_temp,limit=1] sh_swd_UUID_1 if score @s sh_wdr_UUID_2 = @e[tag=sh_temp,limit=1] sh_swd_UUID_2 if score @s sh_wdr_UUID_3 = @e[tag=sh_temp,limit=1] sh_swd_UUID_3 run scoreboard players add @e[tag=sh_temp] sh_swd_count 1

execute if score @s sh_swd_count matches 0 run function sculk_hive:behavior/sword/change_owner

tag @s remove sh_temp