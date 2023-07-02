summon minecraft:item_display ~ ~1.4 ~ {item:{id:"stone_sword",Count:1b},billboard:"vertical",interpolation_duration:0,start_interpolation:0,transformation:[0.695f, 0.719f, 0.000f,0.000f,-0.719f, 0.695f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],width:1,height:2,shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15}, Tags:["sh_dpy", "sh_prep"]}
data modify entity @e[tag=sh_dpy,limit=1,sort=nearest] item set from entity @s Item

summon marker ~ ~ ~ {Tags:["sh_prep","sh_prep_ctrl"]}

scoreboard players set @e[tag=sh_prep_ctrl] sh_cd 0

execute as @a[distance=..16] at @s anchored eyes run particle flash ^ ^ ^ 0.0001 0.0001 0.0001 0.0001 3 force @s
particle flash ~ ~1 ~ 0.1 0.1 0.1 0.0001 5 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4 1.5
summon lightning_bolt ~ ~ ~
particle sculk_soul ~ ~1 ~ 0.6 0.6 0.6 0.00001 50 force

kill @s