experience add @s[scores={acm.xpcost=100..}] -100 points
scoreboard players remove @s[scores={acm.xpcost=100..}] acm.xpcost 100

experience add @s[scores={acm.xpcost=10..99}] -10 points
scoreboard players remove @s[scores={acm.xpcost=10..99}] acm.xpcost 10

experience add @s[scores={acm.xpcost=1..9}] -1 points
scoreboard players remove @s[scores={acm.xpcost=1..9}] acm.xpcost 1

execute if score @s acm.xpcost matches 1.. run function acm:abilities/rem_xp