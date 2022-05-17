execute if score @s sh_cat_span matches 0 unless block ~ ~ ~ sculk_catalyst[bloom=false] unless block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=false] destroy
execute if score @s sh_cat_span matches 0 unless block ~ ~ ~ sculk_catalyst[bloom=false] if block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=false]
execute unless score @s sh_cat_span matches 0 unless block ~ ~ ~ sculk_catalyst[bloom=true] unless block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=true] destroy
execute unless score @s sh_cat_span matches 0 unless block ~ ~ ~ sculk_catalyst[bloom=true] if block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=true]


function sculk_hive:behavior/cat/tick
function sculk_hive:behavior/cat/particles

function sculk_hive:behavior/cat/death/detect
