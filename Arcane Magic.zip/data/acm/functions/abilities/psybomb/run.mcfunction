execute as @s at @e[distance=0.0001..4] as @e[sort=nearest,limit=1] run effect give @s minecraft:poison 30 9 false
particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 20 normal
tag @s add acm.success