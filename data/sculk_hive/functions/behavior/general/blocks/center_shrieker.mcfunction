execute if block ~ ~ ~ #sculk_hive:water_inherent run setblock ~ ~ ~ water
execute if block ~ ~ ~ sculk_shrieker[waterlogged=true] run setblock ~ ~ ~ water
execute unless block ~ ~ ~ #sculk_hive:water_inherent unless block ~ ~ ~ sculk_shrieker[waterlogged=true] run setblock ~ ~ ~ air

execute if entity @s[tag=sh_phs] if block ~ ~ ~ air run setblock ~ ~ ~ sculk_shrieker[waterlogged=false, can_summon=false, shrieking=true]
execute if entity @s[tag=sh_phs] if block ~ ~ ~ water run setblock ~ ~ ~ sculk_shrieker[waterlogged=true, can_summon=false, shrieking=true]

execute if entity @s[tag=sh_dth] if block ~ ~ ~ air run setblock ~ ~ ~ sculk_shrieker[waterlogged=false, can_summon=false, shrieking=true]
execute if entity @s[tag=sh_dth] if block ~ ~ ~ water run setblock ~ ~ ~ sculk_shrieker[waterlogged=true, can_summon=false, shrieking=true]

execute if entity @s[tag=sh_fourth] if block ~ ~ ~ air run setblock ~ ~ ~ sculk_shrieker[waterlogged=false, can_summon=false, shrieking=true]
execute if entity @s[tag=sh_fourth] if block ~ ~ ~ water run setblock ~ ~ ~ sculk_shrieker[waterlogged=true, can_summon=false, shrieking=true]

execute unless entity @s[tag=sh_fourth] unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] if block ~ ~ ~ air run setblock ~ ~ ~ sculk_shrieker[waterlogged=false, can_summon=true, shrieking=true]
execute unless entity @s[tag=sh_fourth] unless entity @s[tag=sh_dth] unless entity @s[tag=sh_phs] if block ~ ~ ~ water run setblock ~ ~ ~ sculk_shrieker[waterlogged=true, can_summon=true, shrieking=true]