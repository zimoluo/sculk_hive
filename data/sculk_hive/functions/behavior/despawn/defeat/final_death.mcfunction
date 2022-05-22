
particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.0001 100 force

particle minecraft:sculk_soul ~ ~ ~ 3 1 3 0.0001 500 force

data merge storage sculk_hive:data {sculkHiveState:{present:0b}}

summon experience_orb ~0.1 ~-0.124 ~ {Count:1, Value:100s}
summon experience_orb ~ ~-0.124 ~0.1 {Count:1, Value:100s}
summon experience_orb ~-0.1 ~-0.124 ~-0.1 {Count:1, Value:50s}
summon experience_orb ~-0.1 ~-0.124 ~ {Count:1, Value:25s}
summon experience_orb ~ ~-0.124 ~-0.1 {Count:1, Value:25s}

effect clear @a[tag=sh_atk] darkness
effect clear @a[tag=sh_eff] darkness

effect clear @e[tag=sh_atk] wither
effect clear @e[tag=sh_atk] darkness
effect clear @e[tag=sh_atk] slowness
effect clear @e[tag=sh_atk] mining_fatigue
effect clear @e[tag=sh_atk] weakness

execute as @a[distance=..32,advancements={adventure/kill_sculk_hive=true}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2

advancement grant @a[distance=..32,advancements={adventure/kill_sculk_hive=false}] only adventure/kill_sculk_hive

function sculk_hive:behavior/despawn/defeat/shrieker_replace

setblock ~ ~ ~ air
place template sculk_hive:boss/portal ~-2 ~-3 ~-2
setblock ~ ~ ~ chest[facing=south,type=single,waterlogged=false]{CustomName:'{"color":"#043F66","text":"Sculk Hive","italic": false}',LootTable:"sculk_hive:chests/loot"}

execute as @e[tag=sh_atk] at @s run function sculk_hive:behavior/general/reset_atk_scoreboard

tag @a[tag=sh_eff] remove sh_eff
tag @e[tag=sh_atk] remove sh_atk
tag @e[tag=sh_boomed] remove sh_boomed
tag @e[tag=sh_bite] remove sh_bite
tag @e[tag=sh_snk] remove sh_snk
tag @e[tag=sh_sta] remove sh_sta
tag @e[tag=sh_atk_normal] remove sh_atk_normal
tag @e[tag=sh_atk_undead] remove sh_atk_undead

execute if data storage sculk_hive:data {world:{doWardenSpawning:{before:0b}}} run gamerule doWardenSpawning false
execute if data storage sculk_hive:data {world:{doWardenSpawning:{before:1b}}} run gamerule doWardenSpawning true

kill @s