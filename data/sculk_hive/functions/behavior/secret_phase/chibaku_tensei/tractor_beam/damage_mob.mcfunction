particle sculk_soul ^ ^ ^ 0.6 0.6 0.6 0.0001 15 force
particle soul_fire_flame ^ ^ ^ 0.6 0.6 0.6 0.4 15 force
particle end_rod ^ ^ ^ 0.6 0.6 0.6 0.4 15 force
data merge entity @s {DeathLootTable:"minecraft:empty"}
playsound entity.illusioner.mirror_move hostile @a ~ ~ ~ 4.5 1.5
execute on passengers run ride @s dismount

tp ~ -160 ~
tag @s add sh_scheduled_delete
tag @s add sh_scheduled_delete_chibaku_tensei