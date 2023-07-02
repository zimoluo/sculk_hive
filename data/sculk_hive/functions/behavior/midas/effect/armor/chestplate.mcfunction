data remove storage sculk_hive:midas_curse itemData
data merge storage sculk_hive:midas_curse {itemData:{}}
summon armor_stand ~ ~ ~ {NoAI:1b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["sh_temp_2334"]}

execute if entity @s[type=player] run data modify storage sculk_hive:midas_curse itemData set from entity @s Inventory[{Slot:102b}].tag
execute unless entity @s[type=player] run data modify storage sculk_hive:midas_curse itemData set from entity @s ArmorItems[2].tag

item replace entity @s armor.chest with golden_chestplate
item modify entity @s armor.chest sculk_hive:midas_curse