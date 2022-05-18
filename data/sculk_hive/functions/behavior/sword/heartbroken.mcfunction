tag @s add sh_htbk

data merge entity @s {PickupDelay:32767s, Age:-32768s, NoGravity:1b}

scoreboard players set @s sh_cd 0

particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.00001 20 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.5