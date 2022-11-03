tag @s add sh_attracted
tag @s add sh_attracted_strong
tag @s add sh_attracted_needed_beam
scoreboard players operation @s sh_attract_timer = ESCAPE sh_constant
scoreboard players operation @s sh_attract_timer -= 50 sh_constant
tag @s add sh_attracted_timed

effect give @s wither 4 1 false