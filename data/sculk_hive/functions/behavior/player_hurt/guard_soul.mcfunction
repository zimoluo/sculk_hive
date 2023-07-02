execute as @a[advancements={sculk_hive:util/hurt_by_guard_soul=true}] if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/033 run effect give @s darkness 8 0 true
execute as @a[advancements={sculk_hive:util/hurt_by_guard_soul=true}] if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/067 run effect give @s darkness 8 0 true
execute as @a[advancements={sculk_hive:util/hurt_by_guard_soul=true}] if data storage sculk_hive:data {world:{difficulty:3}} run effect give @s darkness 8 0 true

execute as @a[advancements={sculk_hive:util/hurt_by_guard_soul=true}] run advancement revoke @s only sculk_hive:util/hurt_by_guard_soul