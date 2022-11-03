scoreboard players operation @s sh_bossbar_max = FOURTH_PHASE sh_constant
scoreboard players operation @s sh_bossbar_max -= 270 sh_constant
scoreboard players operation @s sh_bossbar_max -= 1 sh_constant
execute store result bossbar sculk_hive:health max run scoreboard players get @s sh_bossbar_max

scoreboard players operation @s sh_bossbar_max += 1 sh_constant
scoreboard players operation @s sh_bossbar_max /= 100 sh_constant

execute if score @s sh_phase_cd matches 0..120 run scoreboard players set @s sh_bossbar_multiplier 0
execute if score @s sh_phase_cd matches 121..220 run scoreboard players operation @s sh_bossbar_multiplier = @s sh_phase_cd
execute if score @s sh_phase_cd matches 121..220 run scoreboard players operation @s sh_bossbar_multiplier -= 120 sh_constant
execute if score @s sh_phase_cd matches 121..220 run scoreboard players operation @s sh_bossbar_multiplier *= @s sh_bossbar_max
execute if score @s sh_phase_cd matches 221..270 store result score @s sh_bossbar_multiplier run bossbar get sculk_hive:health max
execute if score @s sh_phase_cd matches 271.. if score @s sh_phase_cd <= FOURTH_PHASE sh_constant run scoreboard players operation @s sh_bossbar_multiplier = @s sh_phase_cd
execute if score @s sh_phase_cd matches 271.. if score @s sh_phase_cd <= FOURTH_PHASE sh_constant run scoreboard players operation @s sh_bossbar_multiplier *= -1 sh_constant
execute if score @s sh_phase_cd matches 271.. if score @s sh_phase_cd <= FOURTH_PHASE sh_constant run scoreboard players operation @s sh_bossbar_multiplier += FOURTH_PHASE sh_constant

execute store result bossbar sculk_hive:health value run scoreboard players get @s sh_bossbar_multiplier

execute if score @s sh_phase_cd matches 0..120 run bossbar set sculk_hive:health color red
execute if score @s sh_phase_cd matches 121.. if score @s sh_phase_cd <= FOURTH_PHASE sh_constant run bossbar set sculk_hive:health color purple
execute if score @s sh_phase_cd matches -1 run bossbar set sculk_hive:health color purple