execute if entity @s[advancements={sculk_hive:util/kill_strong_monster=false}] unless entity @s[predicate=sculk_hive:sword/has_strength_ii] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 2

execute if entity @s[advancements={sculk_hive:util/kill_strong_monster=true}] unless entity @s[predicate=sculk_hive:sword/has_strength_ii] unless entity @s[predicate=sculk_hive:sword/has_regeneration] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 2
execute if entity @s[advancements={sculk_hive:util/kill_strong_monster=true}] if entity @s[predicate=sculk_hive:sword/has_strength_ii] unless entity @s[predicate=sculk_hive:sword/has_regeneration] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 2
execute if entity @s[advancements={sculk_hive:util/kill_strong_monster=true}] unless entity @s[predicate=sculk_hive:sword/has_strength_ii] if entity @s[predicate=sculk_hive:sword/has_regeneration] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 2

function sculk_hive:behavior/sword/any/grant_kill_effects