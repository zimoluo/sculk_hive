function sculk_hive:behavior/midas/effect/gain_tick_only


playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1.0 1.3
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1.0 1.5


execute anchored eyes run particle dust 1 0.843137 0 0.8 ^ ^ ^ 0.45 0.45 0.45 0.0001 35 force


attribute @s generic.movement_speed modifier add 5445bc3e-0d35-4291-a0c3-8b86eab5f125 "midas is heavy" -0.38 multiply
attribute @s generic.max_health modifier add 8ff2db5c-2875-429f-a4ed-4ab828d870e8 "midas is brittle" -4 add
attribute @s generic.attack_damage modifier add bcc97ad0-08ce-4843-83b8-2e8e84de94a8 "midas makes you weak" -0.15 multiply
attribute @s generic.armor_toughness modifier add 9e6d7e26-dfb7-456a-8ec0-30790686d6c8 "midas breaks armor" -0.9 multiply
attribute @s generic.armor modifier add 61e66b1b-9ac8-4249-a4d8-18eb9163cf76 "midas wears armor" -0.1 multiply
attribute @s generic.attack_speed modifier add 0a6ff612-9534-4c5f-888f-2c7617ab2bd7 "midas makes you slow" -0.2 multiply
attribute @s generic.attack_knockback modifier add 5ec915e0-3ae4-4cfa-a615-d2e720a3444c "midas reduces strength" -0.2 multiply