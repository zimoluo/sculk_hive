data remove storage sculk_hive:midas_curse itemData
data merge storage sculk_hive:midas_curse {itemData:{}}
summon armor_stand ~ ~ ~ {NoAI:1b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["sh_temp_2334"]}

execute if entity @s[type=player] run data modify storage sculk_hive:midas_curse itemData set from entity @s SelectedItem.tag
execute unless entity @s[type=player] run data modify storage sculk_hive:midas_curse itemData set from entity @s HandItems[0].tag
execute if entity @s[type=player] run data modify storage sculk_hive:midas_curse itemCount set from entity @s SelectedItem.Count
execute unless entity @s[type=player] run data modify storage sculk_hive:midas_curse itemCount set from entity @s HandItems[0].Count

item replace entity @e[tag=sh_temp_2334,limit=1] weapon.mainhand with golden_helmet
item modify entity @e[tag=sh_temp_2334,limit=1] weapon.mainhand sculk_hive:midas_curse
data modify entity @e[tag=sh_temp_2334,limit=1] HandItems[0].Count set from storage sculk_hive:midas_curse itemCount

item replace entity @s weapon.mainhand from entity @e[tag=sh_temp_2334,limit=1] weapon.mainhand

kill @e[tag=sh_temp_2334]