execute unless block ~ ~1 ~ #sculk_hive:special_break_rules unless block ~ ~1 ~ #sculk_hive:waterloggable[waterlogged=true] unless block ~ ~1 ~ #sculk_hive:water_inherent run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=false] destroy
execute if block ~ ~1 ~ #sculk_hive:waterloggable[waterlogged=true] run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=true] destroy
execute if block ~ ~1 ~ #sculk_hive:water_inherent unless block ~ ~1 ~ water run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=true] destroy
execute if block ~ ~1 ~ #sculk_hive:special_break_rules if block ~ ~1 ~ water[level=0] run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=true]
execute if block ~ ~1 ~ #sculk_hive:special_break_rules if block ~ ~1 ~ water unless block ~ ~1 ~ water[level=0] run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=false]
execute if block ~ ~1 ~ #sculk_hive:special_break_rules if block ~ ~1 ~ snow[layers=1] run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=false]
execute if block ~ ~1 ~ #sculk_hive:special_break_rules if block ~ ~1 ~ snow unless block ~ ~1 ~ snow[layers=1] run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=false] destroy
execute if block ~ ~1 ~ #sculk_hive:special_break_rules if block ~ ~1 ~ #sculk_hive:break_no_destroy run setblock ~ ~1 ~ sculk_shrieker[can_summon=true,waterlogged=false]