execute store result score @s sh_y run data get entity @s Pos[1] 10000
execute store result score @e[tag=sh_chit,limit=1,sort=nearest] sh_y run data get entity @e[tag=sh_chit,limit=1,sort=nearest] Pos[1] 10000

effect clear @s levitation
execute if score @s sh_y < @e[tag=sh_chit,limit=1,sort=nearest] sh_y run effect give @s levitation 1 0 true
execute unless score @s sh_y < @e[tag=sh_chit,limit=1,sort=nearest] sh_y run effect give @s[predicate=!sculk_hive:behavior/near_ground] levitation 1 255 true

summon marker ~ ~ ~ {Tags:["sh_temp"]}

execute at @s facing entity @e[tag=sh_chit,limit=1,sort=nearest] feet run tp @e[tag=sh_temp] ~ ~ ~ ~ ~
execute unless entity @s[tag=sh_attracted_strong] as @e[tag=sh_temp] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=sh_attracted_strong] as @e[tag=sh_temp] at @s run tp @s ^ ^ ^0.25
execute positioned as @e[tag=sh_temp,limit=1, sort=nearest] run tp @s ~ ~ ~ ~ ~

kill @e[tag=sh_temp]