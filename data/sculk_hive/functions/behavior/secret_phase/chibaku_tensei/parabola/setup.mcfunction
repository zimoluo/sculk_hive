tag @s remove sh_parabola_raw

# Get x0, y0, and z0 from self position. Stores up to four decimal digits.
execute store result score @s sh_parabola_x0 run data get entity @s Pos[0] 10000
execute store result score @s sh_parabola_y0 run data get entity @s Pos[1] 10000
execute store result score @s sh_parabola_z0 run data get entity @s Pos[2] 10000

# Get x1, y1, and z1 and temporarily store them into vx, vy, and vz.
execute store result score @s sh_parabola_vx run data get entity @s data.targetPos[0] 10000
execute store result score @s sh_parabola_vy run data get entity @s data.targetPos[1] 10000
execute store result score @s sh_parabola_vz run data get entity @s data.targetPos[2] 10000

# Perform vx = (x1-x0)/dt. dt is stored for each marker, in ticks.
execute store result score @s sh_parabola_dt run data get entity @s data.dt

scoreboard players operation @s sh_parabola_vx -= @s sh_parabola_x0
scoreboard players operation @s sh_parabola_vz -= @s sh_parabola_z0
scoreboard players operation @s sh_parabola_vx /= @s sh_parabola_dt
scoreboard players operation @s sh_parabola_vz /= @s sh_parabola_dt

scoreboard players operation @s sh_parabola_vy -= @s sh_parabola_y0
scoreboard players operation @s sh_parabola_vy /= @s sh_parabola_dt
scoreboard players operation @s sh_parabola_other = @s sh_parabola_dt
scoreboard players operation @s sh_parabola_other *= g/2 sh_constant
scoreboard players operation @s sh_parabola_vy += @s sh_parabola_other

scoreboard players set @s sh_parabola_t 0