execute as @a[advancements={sculk_hive:util/guard_sword_hit_monster=true}] at @s if data entity @s {SelectedItem:{tag:{guardWeaponProperty:0b}}} run function sculk_hive:behavior/player_hurt/poison/init
execute as @a[advancements={sculk_hive:util/guard_sword_hit_monster=true}] at @s if data entity @s {SelectedItem:{tag:{guardWeaponProperty:1b}}} run function sculk_hive:behavior/player_hurt/slowness/init
execute as @a[advancements={sculk_hive:util/guard_sword_hit_monster=true}] at @s if data entity @s {SelectedItem:{tag:{guardWeaponProperty:2b}}} run function sculk_hive:behavior/player_hurt/fire/init




execute as @a[advancements={sculk_hive:util/guard_sword_hit_monster=true}] run advancement revoke @s only sculk_hive:util/guard_sword_hit_monster