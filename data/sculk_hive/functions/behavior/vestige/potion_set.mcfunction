tag @e[tag=sh_guard,tag=!sh_scheduled_delete,tag=!sh_guard_despawn,distance=..4] add sh_guard_has_seen_potion

execute on origin run tag @s add sh_potion_thrower
execute on origin run scoreboard players set @s sh_potion_cd 100