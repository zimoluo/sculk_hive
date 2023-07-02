setblock ~ ~ ~ sculk

execute if block ~1 ~ ~ sculk_vein[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~1 ~ ~ sculk_vein[waterlogged=true] run setblock ~ ~1 ~ water
execute if block ~ ~ ~1 sculk_vein[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~ ~ ~1 sculk_vein[waterlogged=true] run setblock ~ ~1 ~ water
execute if block ~-1 ~ ~ sculk_vein[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~-1 ~ ~ sculk_vein[waterlogged=true] run setblock ~ ~1 ~ water
execute if block ~ ~ ~-1 sculk_vein[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~ ~ ~-1 sculk_vein[waterlogged=true] run setblock ~ ~1 ~ water