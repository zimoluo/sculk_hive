data modify entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse"}].id set value "sculk_hive:super_enchantment"
data remove entity @s Item.tag.AttributeModifiers[1]
data remove entity @s Item.tag.AttributeModifiers[0]

data modify entity @s Item.tag.display.Lore[1] set value '{"text":"Purified via magic","color":"#FFE779","italic":false, "font":"minecraft:illageralt"}'

data merge entity @s {Motion:[0d, 0d, 0d], NoGravity:1b, Item:{id:netherite_sword, tag:{StrongFaith:1b}}}
data merge entity @s {Item:{tag:{AttributeModifiers:[{Slot:"mainhand", AttributeName:"generic.attack_speed", Name:"generic.attack_speed", Amount:-2.05d, Operation:0, UUID:[I; -98353636, 1098926181, -1340359474, -1752847197]},{Slot:"mainhand", AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:10.85, Operation:0, UUID:[I; -885041709, 1683771192, -1533567981, -1556236849]}]}}}

tp @s ~ ~ ~

setblock ~ ~ ~ air
fill ~-1 ~-1 ~ ~1 ~-1 ~ blackstone
fill ~ ~-1 ~-1 ~ ~-1 ~1 blackstone
setblock ~ ~-1 ~ crying_obsidian

playsound minecraft:item.trident.return block @a ~ ~ ~ 2 1.1
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 2 1.2
playsound minecraft:item.totem.use block @a ~ ~ ~ 2 1.5
particle flash ~ ~ ~ 0.1 0.1 0.1 0.0000001 25 force
execute as @a[distance=..6] at @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:end_rod ~ ~ ~ 2 2 2 0.000001 100 force