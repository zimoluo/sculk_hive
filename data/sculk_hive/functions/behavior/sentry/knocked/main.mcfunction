execute unless block ~ ~ ~ sculk_catalyst[bloom=false] unless block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=false] destroy
execute unless block ~ ~ ~ sculk_catalyst[bloom=false] if block ~ ~ ~ sculk_catalyst run setblock ~ ~ ~ sculk_catalyst[bloom=false]

function sculk_hive:behavior/sentry/knocked/particle
function sculk_hive:behavior/sentry/detect
