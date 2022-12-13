execute if entity @s[type=slime] run summon magma_cube ~ ~ ~ {Size: 0, Tags:["sh_temp_3"]}
execute if entity @s[type=slime] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Size set from entity @s Size
execute if entity @s[type=slime] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] wasOnGround set from entity @s wasOnGround

execute if entity @s[type=dolphin] run function sculk_hive:behavior/vestige/corruption/dolphin

execute if entity @s[type=allay] run summon vex ~ ~ ~ {Tags:["sh_temp_3"]}
execute if entity @s[type=allay] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] HandItems set from entity @s HandItems
execute if entity @s[type=allay] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances

execute if entity @s[type=bat] run summon phantom ~ ~ ~ {Size: 0, DeathLootTable: "minecraft:entities/bat", Tags:["sh_temp_3"]}
execute if entity @s[type=cow] run summon ravager ~ ~ ~ {DeathLootTable: "minecraft:entities/cow", Tags:["sh_temp_3"]}
execute if entity @s[type=villager] run summon pillager ~ ~ ~ {Tags:["sh_temp_3"], HandItems:[{id:"crossbow", Count:1b}]}
execute if entity @s[type=pig] run summon creeper ~ ~ ~ {Tags:["sh_temp_3"]}

execute if entity @s[type=skeleton_horse] run summon zombie_horse ~ ~ ~ {Tags:["sh_temp_3"]}
execute if entity @s[type=skeleton_horse] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] SaddleItem set from entity @s SaddleItem
execute if entity @s[type=skeleton_horse] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Tame set from entity @s Tame
execute if entity @s[type=skeleton_horse] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Temper set from entity @s Temper
execute if entity @s[type=skeleton_horse] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Attributes set from entity @s Attributes
execute if entity @s[type=skeleton_horse] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Leash set from entity @s Leash

execute if entity @s[type=evoker] run summon illusioner ~ ~ ~ {Tags:["sh_temp_3"], HandItems:[{id:"bow", Count:1b}]}
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] CanJoinRaid set from entity @s CanJoinRaid
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] PatrolLeader set from entity @s PatrolLeader
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Patrolling set from entity @s Patrolling
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] PatrolTarget set from entity @s PatrolTarget
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] RaidId set from entity @s RaidId
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Wave set from entity @s Wave
execute if entity @s[type=evoker] run data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Wave set from entity @s SpellTicks

data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] ActiveEffects set from entity @s ActiveEffects
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Air set from entity @s Air
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] AbsorptionAmount set from entity @s AbsorptionAmount
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Brain set from entity @s Brain
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] NoAI set from entity @s NoAI
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] NoGravity set from entity @s NoGravity
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] HurtTime set from entity @s HurtTime
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] CanPickUpLoot set from entity @s CanPickUpLoot
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] CustomNameVisible set from entity @s CustomNameVisible
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Glowing set from entity @s Glowing
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Invulnerable set from entity @s Invulnerable
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Silent set from entity @s Silent
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] TicksFrozen set from entity @s TicksFrozen
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Fire set from entity @s Fire
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] HasVisualFire set from entity @s HasVisualFire
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] PortalCooldown set from entity @s PortalCooldown
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

tag @s add sh_corrupted
tag @s remove sh_converting
data modify entity @e[tag=sh_temp_3,limit=1,sort=nearest] Tags set from entity @s Tags

playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 3.5 1.2

tp @s ~ -160 ~
data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @s