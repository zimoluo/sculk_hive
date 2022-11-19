tag @s add sh_sdr_disp

scoreboard players set @s[type=!skeleton_horse] sh_sdr_cd 30
scoreboard players set @s[type=skeleton_horse] sh_sdr_cd 60

playsound minecraft:entity.warden.dig hostile @a ~ ~ ~ 1.5 1.5

data merge entity @s {Invulnerable:1b, NoAI: 1b}
effect give @s resistance 999999 9 true
execute if entity @s[type=skeleton_horse] as @e[tag=sh_rdr,distance=..1] at @s run data merge entity @s {Invulnerable:1b, NoAI: 1b, Silent:1b}
execute if entity @s[type=skeleton_horse] as @e[tag=sh_rdr,distance=..1] at @s run effect give @s resistance 999999 9 true