execute positioned ~0.35 ~ ~-0.5 run summon minecraft:armor_stand ~ ~ ~ {HandItems:[{id:sculk,Count:1b}],Pose:{RightArm:[-100f,0f,0f]}, Invisible:1b, Invulnerable:1b, Marker:1b, NoGravity:1b, Tags:["sh_dpy","sh_prep"],DisabledSlots:16191}
data modify entity @e[tag=sh_dpy,limit=1,sort=nearest] HandItems[0] set from entity @s Item

summon marker ~ ~ ~ {Tags:["sh_prep","sh_prep_ctrl"]}

scoreboard players set @e[tag=sh_prep_ctrl] sh_cd 0

execute as @a[distance=..16] at @s anchored eyes run particle flash ^ ^ ^ 0.0001 0.0001 0.0001 0.0001 3 force @s
particle flash ~ ~1 ~ 0.1 0.1 0.1 0.0001 5 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.5
summon lightning_bolt ~ ~ ~
particle sculk_soul ~ ~1 ~ 0.6 0.6 0.6 0.00001 50 force

kill @s