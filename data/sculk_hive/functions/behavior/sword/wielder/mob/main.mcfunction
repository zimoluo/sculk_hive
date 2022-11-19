execute if data entity @s[tag=sh_guard] {HandItems:[{tag:{HasWielder:0b}}]} run function sculk_hive:behavior/sword/wielder/authorize_guard
execute if data entity @s[tag=!sh_guard] {HandItems:[{tag:{HasWielder:0b}}]} run function sculk_hive:behavior/sword/wielder/authorize

execute if data entity @s {HandItems:[{tag:{HasWielder:1b}}]} run function sculk_hive:behavior/sword/wielder/mob/compare