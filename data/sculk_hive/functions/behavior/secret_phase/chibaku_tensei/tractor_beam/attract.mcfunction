execute unless entity @s[type=player] facing entity @e[tag=sh_chit,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.3
execute if entity @s[type=player] run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/tract_players

execute if entity @s[tag=sh_attracted_needed_beam] if entity @e[tag=sh_chit,distance=..52] run tag @e[tag=sh_chit, limit=1, sort=nearest] add sh_beam_target
execute if entity @s[tag=sh_attracted_needed_beam] if entity @e[tag=sh_chit,distance=..52] facing entity @e[tag=sh_chit,limit=1,sort=nearest] feet positioned ^ ^ ^1.4 anchored eyes run function sculk_hive:behavior/secret_phase/chibaku_tensei/connector/init

scoreboard players set @s[tag=!sh_attracted_timed] sh_attract_timer 0
tag @s add sh_attracted_timed

execute unless entity @s[tag=sh_attracted_cannot_escape] anchored eyes if block ^ ^ ^ #sculk_hive:non-full run scoreboard players add @s sh_attract_timer 1
execute unless entity @s[tag=sh_attracted_cannot_escape] if score @s sh_attract_timer >= ESCAPE sh_constant anchored eyes if block ^ ^ ^ #sculk_hive:non-full run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/release