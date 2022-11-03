execute unless score @s sh_parabola_t >= @s sh_parabola_dt run scoreboard players add @s sh_parabola_t 1

scoreboard players operation @s sh_parabola_other = @s sh_parabola_vx
scoreboard players operation @s sh_parabola_other *= @s sh_parabola_t
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s sh_parabola_other += @s sh_parabola_x0

scoreboard players operation @s sh_parabola_other = @s sh_parabola_vz
scoreboard players operation @s sh_parabola_other *= @s sh_parabola_t
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s sh_parabola_other += @s sh_parabola_z0

scoreboard players operation @s sh_parabola_other = @s sh_parabola_vy
scoreboard players operation @s sh_parabola_other *= @s sh_parabola_t
scoreboard players operation @s sh_cd = @s sh_parabola_t
scoreboard players operation @s sh_cd *= @s sh_parabola_t
scoreboard players operation @s sh_cd *= g/2 sh_constant
scoreboard players operation @s sh_parabola_other -= @s sh_cd
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation @s sh_parabola_other += @s sh_parabola_y0

function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/flying_actions

execute if score @s sh_parabola_t >= @s sh_parabola_dt at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/hit