scoreboard players remove @s sh_potion_cd 1

execute if score @s sh_potion_cd matches ..0 run tag @s remove sh_guard_potion_gone
execute if score @s sh_potion_cd matches ..0 if predicate sculk_hive:vestige/has_wither_ii run advancement grant @a[tag=sh_potion_thrower,distance=..32] only adventure/wither_guard
execute if score @s sh_potion_cd matches ..0 if predicate sculk_hive:vestige/has_wither_ii run tag @a[tag=sh_potion_thrower,distance=..32] remove sh_potion_thrower