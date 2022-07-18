execute unless score @s sh_bite_cd matches 0.. run scoreboard players set @s sh_bite_cd 0

execute if score @s sh_bite_cd matches 0.. run scoreboard players add @s sh_bite_cd 1

execute if score @s sh_bite_cd = BITE_WARN sh_constant run playsound minecraft:entity.vex.charge hostile @s ~ ~ ~ 2 1.2
execute if score @s sh_bite_cd >= BITE_WARN sh_constant run particle sculk_charge_pop ~ ~0.1 ~ 0.3 0.1 0.3 0.0001 2 force
execute if score @s sh_bite_cd = BITE sh_constant run function sculk_hive:behavior/attack/bite/bite