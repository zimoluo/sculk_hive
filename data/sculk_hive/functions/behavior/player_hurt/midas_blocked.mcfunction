execute as @a[advancements={sculk_hive:util/hurt_by_midas_blocked=true}] at @s run function sculk_hive:behavior/midas/effect/break_shield

execute as @a[advancements={sculk_hive:util/hurt_by_midas_blocked=true}] run advancement revoke @s only sculk_hive:util/hurt_by_midas_blocked