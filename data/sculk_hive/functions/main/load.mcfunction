scoreboard objectives add sh_cd dummy
scoreboard objectives add sh_cat_span dummy
scoreboard objectives add sh_cat_span_max dummy
scoreboard objectives add sh_cat_span_diff dummy
scoreboard objectives add sh_cat_ttl dummy
scoreboard objectives add sh_bot_xp dummy
scoreboard objectives add sh_bot_xn dummy
scoreboard objectives add sh_bot_zp dummy
scoreboard objectives add sh_bot_zn dummy
scoreboard objectives add sh_bot_last dummy
scoreboard objectives add sh_bot_special_type dummy
scoreboard objectives add sh_bot_special_pos dummy
scoreboard objectives add sh_x dummy
scoreboard objectives add sh_y dummy
scoreboard objectives add sh_z dummy
scoreboard objectives add sh_last_x dummy
scoreboard objectives add sh_last_y dummy
scoreboard objectives add sh_last_z dummy
scoreboard objectives add sh_bossfight dummy
scoreboard objectives add sh_max_hp dummy
scoreboard objectives add sh_hp dummy
scoreboard objectives add sh_last_max_hp dummy
scoreboard objectives add sh_cat_count dummy
scoreboard objectives add sh_snk minecraft.custom:sneak_time
scoreboard objectives add sh_sta_ttl dummy
scoreboard objectives add sh_bite_cd dummy
scoreboard objectives add sh_boom_cd dummy
scoreboard objectives add sh_phase_cd dummy
scoreboard objectives add sh_dth_cd dummy
scoreboard objectives add sh_dth_eff_cd dummy
scoreboard objectives add sh_shd_v dummy
scoreboard objectives add sh_shd_h dummy
scoreboard objectives add sh_sdr_cd dummy
scoreboard objectives add sh_sdr_count dummy
scoreboard objectives add sh_wdr_UUID_0 dummy
scoreboard objectives add sh_wdr_UUID_1 dummy
scoreboard objectives add sh_wdr_UUID_2 dummy
scoreboard objectives add sh_wdr_UUID_3 dummy
scoreboard objectives add sh_swd_UUID_0 dummy
scoreboard objectives add sh_swd_UUID_1 dummy
scoreboard objectives add sh_swd_UUID_2 dummy
scoreboard objectives add sh_swd_UUID_3 dummy

gamerule maxCommandChainLength 2147483647
team add sculk_hive
team modify sculk_hive friendlyFire false
bossbar add sculk_hive:health {"color":"#043F66","text":"Sculk Hive","italic": false}
bossbar set sculk_hive:health style progress