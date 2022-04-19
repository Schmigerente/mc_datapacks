scoreboard players enable @a shutdown
execute as @a[scores={shutdown=1..}] run function shutdown:main/shutdown
scoreboard players set @a shutdown 0