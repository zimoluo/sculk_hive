execute unless block ~ ~ ~ sculk_catalyst[bloom=true] unless block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=true] destroy
execute unless block ~ ~ ~ sculk_catalyst[bloom=true] if block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=true]

function sculk_hive:behavior/sentry/tick
function sculk_hive:behavior/sentry/particle
function sculk_hive:behavior/sentry/detect
