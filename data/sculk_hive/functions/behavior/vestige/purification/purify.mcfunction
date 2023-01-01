execute if entity @s[type=magma_cube] run summon slime ~ ~ ~ {Size: 0, Tags:["sh_temp_6"]}
execute if entity @s[type=magma_cube] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Size set from entity @s Size
execute if entity @s[type=magma_cube] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] wasOnGround set from entity @s wasOnGround

execute if entity @s[type=#sculk_hive:monument_guardians] run summon dolphin ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=#sculk_hive:monument_guardians] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] DeathLootTable set from entity @s DeathLootTable

execute if entity @s[type=vex] run summon allay ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=vex] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] HandItems set from entity @s HandItems
execute if entity @s[type=vex] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances

execute if entity @s[type=phantom] run summon bat ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=ravager] run summon cow ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=pillager] run summon villager ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=creeper] run summon pig ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=strider] run summon frog ~ ~ ~ {Tags:["sh_temp_6"], variant:"minecraft:warm"}

execute if entity @s[type=zombie_horse] run summon skeleton_horse ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=zombie_horse] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] SaddleItem set from entity @s SaddleItem
execute if entity @s[type=zombie_horse] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Tame set from entity @s Tame
execute if entity @s[type=zombie_horse] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Temper set from entity @s Temper
execute if entity @s[type=zombie_horse] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Attributes set from entity @s Attributes
execute if entity @s[type=zombie_horse] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Leash set from entity @s Leash

execute if entity @s[type=illusioner] run summon evoker ~ ~ ~ {Tags:["sh_temp_6"], HandItems:[{id:"bow", Count:1b}]}
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] CanJoinRaid set from entity @s CanJoinRaid
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] PatrolLeader set from entity @s PatrolLeader
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Patrolling set from entity @s Patrolling
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] PatrolTarget set from entity @s PatrolTarget
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] RaidId set from entity @s RaidId
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Wave set from entity @s Wave
execute if entity @s[type=illusioner] run data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Wave set from entity @s SpellTicks

execute if entity @s[type=zombie] run summon zombie ~ ~ ~ {Tags:["sh_temp_6"]}
execute if entity @s[type=skeleton] run summon skeleton ~ ~ ~ {Tags:["sh_temp_6"], HandItems:[{id:"bow", Count:1b}]}

data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] ActiveEffects set from entity @s ActiveEffects
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Air set from entity @s Air
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] AbsorptionAmount set from entity @s AbsorptionAmount
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Brain set from entity @s Brain
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] NoAI set from entity @s NoAI
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] NoGravity set from entity @s NoGravity
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] HurtTime set from entity @s HurtTime
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest, type=!#sculk_hive:guard] CanPickUpLoot set from entity @s CanPickUpLoot
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] CustomNameVisible set from entity @s CustomNameVisible
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Glowing set from entity @s Glowing
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Invulnerable set from entity @s Invulnerable
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Silent set from entity @s Silent
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] TicksFrozen set from entity @s TicksFrozen
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] Fire set from entity @s Fire
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] HasVisualFire set from entity @s HasVisualFire
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest] PortalCooldown set from entity @s PortalCooldown
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest, type=!#sculk_hive:guard] FallDistance set from entity @s FallDistance

tag @s add sh_purified
tag @s remove sh_converting
tag @s remove sh_corrupted
data modify entity @e[tag=sh_temp_6,limit=1,sort=nearest, type=!#sculk_hive:guard] Tags set from entity @s Tags

tag @e[tag=sh_temp_6] add sh_purified
tag @e[tag=sh_temp_6] remove sh_converting
tag @e[tag=sh_temp_6] remove sh_corrupted
tag @e[tag=sh_temp_6] remove sh_temp_6

playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 3.5 1.2
playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 3.5 0.8
playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 3.5 1.3

execute anchored eyes run particle happy_villager ^ ^ ^ 0.5 0.5 0.5 0.0001 10 force

tp @s ~ -160 ~
data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @s