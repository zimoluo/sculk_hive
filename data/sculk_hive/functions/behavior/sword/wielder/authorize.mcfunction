summon armor_stand ~ ~ ~ {Tags:["sh_temp"], Marker:1b, Invisible:1b, NoGravity:1b}
item replace entity @e[tag=sh_temp] weapon.mainhand from entity @s weapon.mainhand
data modify entity @e[tag=sh_temp,limit=1] HandItems[0].tag.HasWielder set value 1b
data modify entity @e[tag=sh_temp,limit=1] HandItems[0].tag.WielderUUID set from entity @s UUID
item modify entity @e[tag=sh_temp] weapon.mainhand sculk_hive:sculk_sword

execute store success score @e[tag=sh_temp,limit=1] sh_swd_count run data get entity @e[tag=sh_temp,limit=1] HandItems[0].tag.display.Lore[5]
execute if score @e[tag=sh_temp,limit=1] sh_swd_count matches 1.. run data remove entity @e[tag=sh_temp,limit=1] HandItems[0].tag.display.Lore[2]
execute if score @e[tag=sh_temp,limit=1] sh_swd_count matches 1.. run data remove entity @e[tag=sh_temp,limit=1] HandItems[0].tag.display.Lore[2]

item replace entity @s weapon.mainhand from entity @e[tag=sh_temp,limit=1] weapon.mainhand

playsound minecraft:item.trident.return master @s ~ ~ ~ 2 1.4

kill @e[tag=sh_temp]