tag @a[tag=sleeping] remove sleeping
tag @a[tag=slept] remove slept
scoreboard players set #sleep.online sleep 0
scoreboard players set #sleep.sleeping sleep 0
scoreboard players set #sleep.sleeping.percent sleep 0
scoreboard players set #sleep.slept.percent sleep 0

execute as @a at @s store result score @s sleep run data get entity @s SleepTimer
tag @a[scores={sleep=1..}] add sleeping
tag @a[scores={sleeptimer=100..}] add slept

scoreboard players add @a[tag=sleeping] sleeptimer 1

execute as @a run scoreboard players add #sleep.online sleep 1
execute as @a[tag=slept] run scoreboard players add #sleep.slept.percent sleep 100
execute as @a[tag=sleeping] run scoreboard players add #sleep.sleeping.percent sleep 100
execute as @a[tag=sleeping] run scoreboard players add #sleep.sleeping sleep 1

scoreboard players operation #sleep.sleeping.percent sleep /= #sleep.online sleep
scoreboard players operation #sleep.slept.percent sleep /= #sleep.online sleep

execute if score #sleep.percent sleep matches 1..100 if score #sleep.slept.percent sleep >= #sleep.percent sleep run function serverpack:sleep/setday
execute if score #sleep.percent sleep matches 0 run function serverpack:sleep/setday

execute as @a[scores={sleep=3}] run tellraw @a ["",{"score":{"name":"#sleep.sleeping","objective":"sleep"},"color":"gold"},{"text":" from ","color":"gold"},{"score":{"name":"#sleep.online","objective":"sleep"},"color":"gold"},{"text":" Players are Sleeping. ","color":"gold"}]

scoreboard players set @a[tag=!sleeping] sleeptimer 0
scoreboard players set @a[scores={sleeptimer=100..}] sleeptimer 100