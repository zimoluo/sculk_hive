execute unless score @s sh_regen matches 0.. run scoreboard players set @s sh_regen 60
scoreboard players remove @s sh_regen 1

execute if score @s sh_regen matches 0 unless entity @a[gamemode=!spectator, distance=..64] run effect give @e[tag=sh_cat_hp, distance=..64] instant_damage 1 1 true
execute if score @s sh_regen matches 0 unless entity @a[gamemode=!spectator, distance=..64] run effect give @e[tag=sh_sey_hp, distance=..64] instant_damage 1 1 true
execute if score @s sh_regen matches 0 unless entity @a[gamemode=!spectator, distance=..64] run effect give @e[tag=sh_final_hp, distance=..64] instant_damage 1 1 true