execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s sp_teleport 100
execute align xyz positioned ~0.5 ~0.1 ~0.5 unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run tag @s add sp_telepos
execute as @s[tag=sp_telepos] at @s run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.2 100 normal
execute align xzy positioned ~0.5 ~0.05 ~0.5 run teleport @s[tag=sp_telepos] ~ ~1 ~
scoreboard players set @s[tag=sp_telepos] sp_teleport 100
execute as @s[tag=sp_telepos] run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1
execute as @s[tag=sp_telepos] run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.2 100 normal
tag @s remove sp_telepos
scoreboard players add @s sp_teleport 1
execute if score @s sp_teleport matches ..100 positioned ^ ^ ^0.5 run function powers:abilities/teleport_ray