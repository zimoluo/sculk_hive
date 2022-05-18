effect give @s weakness 5 9
effect give @s blindness 5 0
effect give @s wither 5 1
effect give @s darkness 5 0 true

particle sculk_soul ~ ~1 ~ 0.4 0.6 0.4 0.000001 2 force

execute unless entity @s[tag=sh_psh,type=player] run playsound entity.elder_guardian.curse hostile @s ~ ~ ~ 2 1

tag @s add sh_psh