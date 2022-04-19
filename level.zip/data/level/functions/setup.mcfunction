#checking dependencies

#allocating scoreboards
scoreboard objectives add level dummy
scoreboard objectives add xp dummy
scoreboard objectives add vanillaXp dummy
scoreboard objectives add offsetXp dummy
scoreboard objectives add xp_cap dummy
scoreboard objectives add xp_minus_xp_cap dummy
scoreboard objectives setdisplay list level

#initializion
scoreboard players set %factor level 5
scoreboard players set %add level 5
execute as @a at @s run function level:level/reload