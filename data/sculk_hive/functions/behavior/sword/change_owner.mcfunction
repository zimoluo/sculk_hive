data modify entity @s Item.tag.HasWielder set value 0b
data modify entity @s Item.tag.display.Lore append value '{"text":"Dwindling","color":"#006F75","italic":false, "font":"minecraft:illageralt"}'

playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1.2
particle minecraft:enchant ~ ~0.4 ~ 0.3 0.3 0.3 0.00001 10

summon item ~ ~ ~ {PickupDelay:10s, Age:-18000, Health:32767s, Invulnerable:1b, Item:{id:sculk,Count:1b},Tags:["sh_temp_1"]}
data modify entity @e[tag=sh_temp_1,limit=1] Item set from entity @s Item
data modify entity @e[tag=sh_temp_1,limit=1] Motion set from entity @s Motion
tag @e[tag=sh_temp_1] remove sh_temp_1

kill @s