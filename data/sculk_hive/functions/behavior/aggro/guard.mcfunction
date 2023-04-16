damage @s 0.001 sculk_hive:aggro by @e[type=!player, type=!#sculk_hive:guard_ignore, nbt=!{Invulnerable:1b}, tag=!sh_guard, tag=!sh_part, distance=..24, limit=1, sort=nearest, predicate=sculk_hive:vestige/in_vestige]

data merge entity @s {HurtTime:0s}