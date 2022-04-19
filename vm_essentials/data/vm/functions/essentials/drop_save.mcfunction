execute as @a at @s unless block ~ ~-1 ~ minecraft:air run function vm:checkpoint/save

effect clear @a[tag=reset_p] minecraft:slow_falling
tag @a[tag=reset_p] remove reset_p

execute as @a store result score @s y_current run data get entity @s Pos[1]
tag @a[scores={y_current=..0}] add reset_p
tag @a[x=-100,dx=200,z=-100,dz=200,y=0,dy=30,tag=!ignore] add reset_p

execute at @a[tag=reset_p] as @p run function vm:checkpoint/load