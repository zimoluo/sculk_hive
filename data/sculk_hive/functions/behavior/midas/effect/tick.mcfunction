scoreboard players remove @s sh_midas_tick 1

execute if predicate sculk_hive:chance/08 anchored eyes run particle dust 1 0.843137 0 0.7 ^ ^ ^ 0.5 0.5 0.5 0.0001 1 force

function sculk_hive:behavior/midas/effect/armor_curse
function sculk_hive:behavior/midas/effect/item_curse

execute if data entity @s {OnGround:1b} positioned ~ ~-1 ~ unless block ~ ~ ~ #sculk_hive:immune_gold if predicate sculk_hive:behavior/is_exposed run function sculk_hive:behavior/midas/arrow/decide_gold

execute unless entity @s[tag=sh_midas_curse_extra] if data entity @s {HurtTime:9s} run function sculk_hive:behavior/midas/effect/curse_extra
execute if data entity @s {HurtTime:8s} run tag @s remove sh_midas_curse_extra


execute if score @s sh_midas_tick matches ..0 run function sculk_hive:behavior/midas/effect/clear

execute store success score @s sh_arrow_score run attribute @s generic.armor modifier value get 61e66b1b-9ac8-4249-a4d8-18eb9163cf76
execute unless score @s sh_arrow_score matches 1.. run function sculk_hive:behavior/midas/effect/clear