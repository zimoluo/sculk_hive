tag @a[distance=..32, gamemode=!creative, gamemode=!spectator] add sh_atk
tag @a[distance=..32, gamemode=!creative, gamemode=!spectator] add sh_atk_normal


tag @e[distance=..32, type=!player, type=!#sculk_hive:non-attack, type=!#sculk_hive:undead] add sh_atk
tag @e[distance=..32, type=!player, type=!#sculk_hive:non-attack, type=!#sculk_hive:undead] add sh_atk_normal
tag @e[distance=..32, type=#sculk_hive:undead] add sh_atk
tag @e[distance=..32, type=#sculk_hive:undead] add sh_atk_undead

tag @e[distance=32.01.., tag=sh_atk] remove sh_atk
tag @e[distance=32.01.., tag=sh_atk_normal] remove sh_atk_normal
tag @e[distance=32.01.., tag=sh_atk_undead] remove sh_atk_undead

tag @a[gamemode=!adventure, gamemode=!survival, tag=sh_atk] remove sh_atk
tag @a[gamemode=!adventure, gamemode=!survival, tag=sh_atk_normal] remove sh_atk_normal


tag @a[distance=..32] add sh_eff

tag @e[distance=32.01.., tag=sh_eff] remove sh_eff

tag @e[type=#sculk_hive:non-attack] remove sh_atk
tag @e[nbt={Invulnerable:1b}] remove sh_atk
tag @e[tag=sh_part] remove sh_atk
tag @e[tag=sh_part] remove sh_atk_undead
tag @e[tag=sh_part] remove sh_atk_normal
tag @e[tag=!sh_atk] remove sh_sta
tag @e[tag=!sh_atk] remove sh_bite
tag @e[tag=!sh_atk] remove sh_boomed