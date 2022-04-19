scoreboard players add @s level 1
scoreboard players add @s[scores={level=..250}] skillPoints 1
scoreboard players operation @s xp -= @s xp_cap
function level:level/reload

title @s times 0 30 50
title @s title [{"text":"Level Up","bold":true,"color":"dark_green"}]
title @s subtitle [{"text":"You are now Level","bold":true,"color":"gray"},{"text":" ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"level"},"bold":true,"color":"dark_green"}]

execute at @a as @s run scoreboard players operation @s xp_minus_xp_cap = @s xp
execute at @a as @s run scoreboard players operation @s xp_minus_xp_cap -= @s xp_cap
execute at @a[scores={xp_minus_xp_cap=0..}] as @s run function level:level/levelup