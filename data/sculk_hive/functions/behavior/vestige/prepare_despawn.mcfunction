tag @s add sh_guard_despawn

scoreboard players set @s sh_sdr_cd 30

playsound minecraft:entity.warden.dig hostile @a ~ ~ ~ 2 1.2

data merge entity @s {Invulnerable:1b, NoAI: 1b, Silent: 1b}
effect give @s resistance 999999 9 true