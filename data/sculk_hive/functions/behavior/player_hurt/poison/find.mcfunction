scoreboard players add @s sh_cd 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=sh_victim,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s}] as @e[tag=sh_victim,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s},limit=1,sort=nearest] run scoreboard players set @s sh_cd 7
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=sh_victim,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s}] as @e[tag=sh_victim,dx=0,dy=0,dz=0,nbt=!{HurtTime:0s},limit=1,sort=nearest] positioned ~0.5 ~0.5 ~0.5 run function sculk_hive:behavior/player_hurt/poison/curse
execute unless score @s sh_cd matches 7.. positioned ^ ^ ^1 run function sculk_hive:behavior/player_hurt/poison/find