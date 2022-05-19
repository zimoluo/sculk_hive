advancement revoke @s only sculk_hive:util/kill_monster
advancement revoke @s only sculk_hive:util/hit_monster

execute unless entity @s[predicate=sculk_hive:sword/has_strength_ii] if data entity @s {SelectedItem:{tag:{IsSculkSword:1b}}} run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2
execute if data entity @s {SelectedItem:{tag:{IsSculkSword:1b}}} run effect give @s strength 12 1