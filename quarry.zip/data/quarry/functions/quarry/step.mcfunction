execute as @e[type=armor_stand,tag=quarry.worker] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=quarry.worker] at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.1 1 0.1 1 10 normal

execute as @e[type=armor_stand,tag=quarry.worker] at @s run kill @e[type=item,nbt={Item:{id: "minecraft:cobblestone"}},distance=..2]
execute as @e[type=armor_stand,tag=quarry.worker] at @s run kill @e[type=item,nbt={Item:{id: "minecraft:granite"}},distance=..2]
execute as @e[type=armor_stand,tag=quarry.worker] at @s run kill @e[type=item,nbt={Item:{id: "minecraft:diorite"}},distance=..2]
execute as @e[type=armor_stand,tag=quarry.worker] at @s run kill @e[type=item,nbt={Item:{id: "minecraft:andesite"}},distance=..2]

execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16,quarry.dz=..15}] at @s run tp ~ ~ ~1
execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16,quarry.dz=16}] at @s run tp ~ ~-1 ~-15

execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=..15}] at @s run tp ~1 ~ ~
execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16}] at @s run tp ~-15 ~ ~

execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16,quarry.dz=16}] at @s run scoreboard players set @s quarry.dz 0
execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16,quarry.dz=..15}] at @s run scoreboard players add @s quarry.dz 1

execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=16}] at @s run scoreboard players set @s quarry.dx 0
execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dx=..15}] at @s run scoreboard players add @s quarry.dx 1


execute as @e[type=armor_stand,tag=quarry.worker] at @s store result score @s quarry.dy run data get entity @s Pos[1]

execute as @e[type=armor_stand,tag=quarry.worker,scores={quarry.dy=..0}] at @s positioned ~-15 ~ ~-15 run function quarry:quarry/delete