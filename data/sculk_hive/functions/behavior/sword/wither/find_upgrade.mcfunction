scoreboard players add @s sh_cd 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#sculk_hive:monster,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s}] as @e[type=#sculk_hive:monster,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s},limit=1,sort=nearest] run scoreboard players set @s sh_cd 8
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#sculk_hive:monster,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s}] as @e[type=#sculk_hive:monster,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s},limit=1,sort=nearest] positioned ~0.5 ~0.5 ~0.5 run function sculk_hive:behavior/sword/wither/curse_upgrade
execute unless score @s sh_cd matches 8.. positioned ^ ^ ^1 run function sculk_hive:behavior/sword/wither/find_upgrade