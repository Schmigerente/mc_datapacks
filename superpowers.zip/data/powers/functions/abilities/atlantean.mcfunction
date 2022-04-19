execute if block ~ ~ ~ minecraft:water run tag @s add sp_swimming
effect give @s[tag=sp_swimming] minecraft:dolphins_grace 1 2 true
effect give @s[tag=sp_swimming] minecraft:conduit_power 1 0 true
tag @s[tag=sp_swimming] remove sp_swimming