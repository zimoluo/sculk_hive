execute unless block ~ ~ ~ #sculk_hive:waterloggable[waterlogged=true] unless block ~ ~ ~ #sculk_hive:special_break_rules unless block ~ ~ ~ #sculk_hive:water_inherent run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true] destroy

execute if block ~ ~ ~ #sculk_hive:waterloggable[waterlogged=true] run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=true] destroy

execute if block ~ ~ ~ #sculk_hive:water_inherent unless block ~ ~ ~ #sculk_hive:special_break_rules run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=true] destroy

execute if block ~ ~ ~ #sculk_hive:special_break_rules if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=true]

execute if block ~ ~ ~ #sculk_hive:special_break_rules if block ~ ~ ~ water unless block ~ ~ ~ water[level=0] run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=false]

execute if block ~ ~ ~ #sculk_hive:special_break_rules if block ~ ~ ~ snow[layers=1] run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=false]

execute if block ~ ~ ~ #sculk_hive:special_break_rules if block ~ ~ ~ snow unless block ~ ~ ~ snow[layers=1] run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=false] destroy

execute if block ~ ~ ~ #sculk_hive:special_break_rules if block ~ ~ ~ #sculk_hive:break_no_destroy run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true,waterlogged=false]