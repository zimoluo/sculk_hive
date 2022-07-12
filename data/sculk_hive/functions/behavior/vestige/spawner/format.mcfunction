execute if block ~ ~ ~ cave_air if entity @s[tag=sh_vestige_spawner_square] run summon marker ~ ~ ~ {Tags:["sh_vestige_spawn_bot"], data:{forward: 2, side: 2}}
execute if block ~ ~ ~ cave_air if entity @s[tag=sh_vestige_spawner_short] run summon marker ~ ~ ~ {Tags:["sh_vestige_spawn_bot", "sh_temp"], data:{forward: 4, side: 2}}
execute if block ~ ~ ~ cave_air if entity @s[tag=sh_vestige_spawner_long] run summon marker ~ ~ ~ {Tags:["sh_vestige_spawn_bot", "sh_temp"], data:{forward: 8, side: 2}}
execute if entity @s[tag=sh_vestige_spawner_center] run summon marker ~ ~ ~ {Tags:["sh_vestige_spawn_center"]}

tp @e[tag=sh_temp] ~ ~ ~ ~ ~
tag @e[tag=sh_temp] remove sh_temp

kill @s