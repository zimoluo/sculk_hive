execute if entity @e[tag=sh_chit, distance=..0.6] run effect give @s instant_damage 1 4 true

effect give @s wither 100 9 false
effect give @s blindness 100 0 false
effect give @s darkness 100 0 true
effect give @s slowness 100 9 false
effect give @s mining_fatigue 100 9 false
effect give @s weakness 100 9 false

particle sculk_soul ^ ^ ^0.1 0.1 0.1 0.1 0.00001 2 force @s
particle soul_fire_flame ^ ^ ^0.1 0.1 0.1 0.1 0.00001 2 force @s
particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0.0001 3