execute as @a[advancements={sculk_hive:util/hurt_by_midas=true}] at @s run function sculk_hive:behavior/midas/effect/gain

execute as @a[advancements={sculk_hive:util/hurt_by_midas=true}] run advancement revoke @s only sculk_hive:util/hurt_by_midas