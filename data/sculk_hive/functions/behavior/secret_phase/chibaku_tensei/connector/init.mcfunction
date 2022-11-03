summon marker ^ ^ ^ {Tags:["sh_chit_beam"]}

tp @e[tag=sh_chit_beam] ^ ^ ^ facing entity @e[tag=sh_beam_target,limit=1, sort=nearest, distance=..64] feet

execute as @e[tag=sh_chit_beam] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/connector/move