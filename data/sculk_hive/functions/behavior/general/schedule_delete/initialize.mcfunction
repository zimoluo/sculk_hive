scoreboard players set @s sh_delete_tick 10
data merge entity @s {DeathLootTable:"minecraft:empty", Silent:1b, NoAI:1b, PersistenceRequired:0b}
kill @s[type=villager]
tp @s ~ -160 ~