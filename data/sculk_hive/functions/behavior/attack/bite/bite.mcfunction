tag @s remove sh_bite
scoreboard players set @s sh_bite_cd 0

summon evoker_fangs ~ ~ ~ {Warmup:0, Tags:["sh_part"]}

effect give @s darkness 10 0 true
execute if predicate sculk_hive:chance/03 run effect give @s wither 5 1

playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 3 1.2
particle soul_fire_flame ~ ~0.5 ~ 0.3 0.5 0.3 0.1 30 force