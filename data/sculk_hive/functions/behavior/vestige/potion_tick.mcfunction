execute unless entity @e[type=potion,nbt={Item:{tag:{isDarkBrew:1b}}},distance=..4] run tag @s remove sh_guard_has_seen_potion
execute unless entity @e[type=potion,nbt={Item:{tag:{isDarkBrew:1b}}},distance=..4] run tag @s add sh_guard_potion_gone
execute unless entity @e[type=potion,nbt={Item:{tag:{isDarkBrew:1b}}},distance=..4] run scoreboard players set @s sh_potion_cd 2