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
scoreboard objectives add sh_regen dummy
scoreboard objectives add sh_x dummy
scoreboard objectives add sh_y dummy
scoreboard objectives add sh_z dummy
scoreboard objectives add sh_forward dummy
scoreboard objectives add sh_side dummy
scoreboard objectives add sh_pos_score dummy
scoreboard objectives add sh_last_x dummy
scoreboard objectives add sh_last_y dummy
scoreboard objectives add sh_last_z dummy
scoreboard objectives add sh_bossfight dummy
scoreboard objectives add sh_max_hp dummy
scoreboard objectives add sh_hp dummy
scoreboard objectives add sh_dmg dummy
scoreboard objectives add sh_highest_max_hp dummy
scoreboard objectives add sh_final_hp_addition dummy
scoreboard objectives add sh_final_hp_max dummy
scoreboard objectives add sh_dynamic_hp_player_multiplier dummy
scoreboard objectives add sh_dynamic_hp_calc dummy
scoreboard objectives add sh_dynamic_hp_entry dummy
scoreboard objectives add sh_cat_count dummy
scoreboard objectives add sh_snk minecraft.custom:sneak_time
scoreboard objectives add sh_jump minecraft.custom:jump
scoreboard objectives add sh_climb minecraft.custom:climb_one_cm
scoreboard objectives add sh_fall minecraft.custom:fall_one_cm
scoreboard objectives add sh_sprint minecraft.custom:sprint_one_cm
scoreboard objectives add sh_fly minecraft.custom:fly_one_cm
scoreboard objectives add sh_swim minecraft.custom:swim_one_cm
scoreboard objectives add sh_walk minecraft.custom:walk_one_cm
scoreboard objectives add sh_walk_water minecraft.custom:walk_on_water_one_cm
scoreboard objectives add sh_boat minecraft.custom:boat_one_cm
scoreboard objectives add sh_aviate minecraft.custom:aviate_one_cm
scoreboard objectives add sh_horse minecraft.custom:horse_one_cm
scoreboard objectives add sh_minecart minecraft.custom:minecart_one_cm
scoreboard objectives add sh_pig minecraft.custom:pig_one_cm
scoreboard objectives add sh_strider minecraft.custom:strider_one_cm
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
scoreboard objectives add sh_swd_count dummy
scoreboard objectives add sh_max_spawn dummy

scoreboard objectives add sh_constant dummy
scoreboard players set 2 sh_constant 2
scoreboard players set 3 sh_constant 3
scoreboard players set 4 sh_constant 4
scoreboard players set 5 sh_constant 5
scoreboard players set 6 sh_constant 6
scoreboard players set 7 sh_constant 7
scoreboard players set 8 sh_constant 8
scoreboard players set 9 sh_constant 9
scoreboard players set 10 sh_constant 10

gamerule maxCommandChainLength 2147483647
team add sculk_hive
team modify sculk_hive friendlyFire false
team modify sculk_hive seeFriendlyInvisibles false
team modify sculk_hive collisionRule always
bossbar add sculk_hive:health {"color":"#043F66","text":"Sculk Hive","italic": false}
bossbar set sculk_hive:health style progress