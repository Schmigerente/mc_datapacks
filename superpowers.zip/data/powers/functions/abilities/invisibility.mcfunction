team empty sp_friendly
team join sp_friendly @e[type=!player]
execute as @s[tag=!sp_invisible,scores={sp_sneak=1..,sp_elevation=..-80,sp_cooldown=0}] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 1000 normal
tag @s[scores={sp_sneak=1..,sp_elevation=..-80,sp_cooldown=0}] add sp_invisible
effect give @s[tag=sp_invisible] invisibility 1 0 true
effect give @s[tag=sp_invisible] slowness 1 0 true
effect give @s[tag=sp_invisible] weakness 1 0 true
effect give @s[tag=sp_invisible] mining_fatigue 1 100 true
team join sp_friendly @s[tag=sp_invisible]
effect clear @s[tag=sp_invisible,scores={sp_sprint=1..}] invisibility
scoreboard players set @s[tag=sp_invisible,scores={sp_sprint=1..}] sp_cooldown 100
tag @s[scores={sp_sprint=1..}] remove sp_invisible