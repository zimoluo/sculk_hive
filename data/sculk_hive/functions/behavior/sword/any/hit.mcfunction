advancement revoke @s only sculk_hive:util/kill_monster
advancement revoke @s only sculk_hive:util/hit_monster

execute if data entity @s {SelectedItem:{tag:{IsSculkSword:1b, StrongFaith:0b}}} run function sculk_hive:behavior/sword/wither/init
execute if data entity @s {SelectedItem:{tag:{IsSculkSword:1b, StrongFaith:1b}}} run function sculk_hive:behavior/sword/wither/init_upgrade