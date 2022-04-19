#data gather
execute as @a at @s store result score @s sp_elevation run data get entity @s Rotation[1] -1

execute as @a[tag=!sp_roll] at @s run function powers:get_power
tag @a[tag=!sp_roll] add sp_roll

execute as @a[tag=sp_atlantean] at @s run function powers:abilities/atlantean
execute as @a[tag=sp_invincibility] at @s run function powers:abilities/invincibility
execute as @a[tag=sp_invisibility] at @s run function powers:abilities/invisibility
execute as @a[tag=sp_jump] at @s run function powers:abilities/jump
execute as @a[tag=sp_regeneration] at @s run function powers:abilities/regeneration
execute as @a[tag=sp_speed] at @s run function powers:abilities/speed
execute as @a[tag=sp_strength] at @s run function powers:abilities/strength
execute as @a[tag=sp_teleport] at @s run function powers:abilities/teleport
execute as @a[tag=sp_divine] at @s run function powers:abilities/divine
execute as @a[tag=sp_corrupt] at @s run function powers:abilities/corrupt


#data clear
scoreboard players set @a[scores={sp_sneak=1..}] sp_sneak 0
scoreboard players set @a[scores={sp_jump=1..}] sp_jump 0
scoreboard players remove @a[scores={sp_sprint=1..}] sp_sprint 1
scoreboard players set @a[scores={sp_sprint=5..}] sp_sprint 5
scoreboard players remove @a[scores={sp_cooldown=1..}] sp_cooldown 1