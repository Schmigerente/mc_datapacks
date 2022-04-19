execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.2 100 normal
execute align xzy positioned ~0.5 ~0.05 ~0.5 run teleport @s ~ ~1 ~
scoreboard players set @s acm.teleport 251
execute as @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1
execute as @s run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.2 100 normal
tag @s add acm.success