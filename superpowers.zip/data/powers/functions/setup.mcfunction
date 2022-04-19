#allocating scoreboards
scoreboard objectives add sp_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sp_jump minecraft.custom:minecraft.jump
scoreboard objectives add sp_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sp_health health
scoreboard objectives add sp_elevation dummy
scoreboard objectives add sp_cooldown dummy
scoreboard objectives add sp_sprint_ dummy
scoreboard objectives add sp_teleport dummy
scoreboard objectives add sp_random dummy
scoreboard objectives add sp_power dummy
team add sp_friendly
#team modify sp_friendly friendlyFire false

#initializion
execute as @a unless score @s sp_teleport matches 0 run scoreboard players set @s sp_teleport 0
execute as @a unless score @s sp_cooldown matches 0 run scoreboard players set @s sp_cooldown 0
execute as @a unless score @s sp_sprint_ matches 0 run scoreboard players set @s sp_sprint_ 0
