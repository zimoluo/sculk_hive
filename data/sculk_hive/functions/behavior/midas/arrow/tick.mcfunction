data merge entity @s {crit:1b}

execute unless entity @s[tag=sh_midas_arrow_expired] run particle dust 1 0.843137 0 1 ~ ~0.25 ~ 0.15 0.15 0.15 0.0001 2 force

execute unless entity @s[tag=sh_midas_arrow_expired] if data entity @s {inGround:1b} run function sculk_hive:behavior/midas/arrow/hit_ground

execute unless entity @s[tag=sh_midas_arrow_expired] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!player,type=!#sculk_hive:non-mob,tag=!sh_midas,dx=0.5,dy=0.5,dz=0.5,tag=!sh_part] if score @s sh_midas_tick matches 0.. at @s run function sculk_hive:behavior/midas/effect/gain_tick_only
execute unless entity @s[tag=sh_midas_arrow_expired] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!player,type=!#sculk_hive:non-mob,tag=!sh_midas,dx=0.5,dy=0.5,dz=0.5,tag=!sh_part] unless score @s sh_midas_tick matches 0.. at @s run function sculk_hive:behavior/midas/effect/gain