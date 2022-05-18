execute if entity @s[type=player] if data entity @s {SelectedItem:{tag:{IsSculkSword:1b}}} run function sculk_hive:behavior/sword/wielder/player/main
execute if entity @s[type=!player] if data entity @s {HandItems:[{tag:{IsSculkSword:1b}}]} run function sculk_hive:behavior/sword/wielder/mob/main

execute if entity @s[type=player] unless data entity @s {SelectedItem:{tag:{IsSculkSword:1b}}} run tag @s remove sh_psh
execute if entity @s[type=!player] unless data entity @s {HandItems:[{tag:{IsSculkSword:1b}}]} run tag @s remove sh_psh