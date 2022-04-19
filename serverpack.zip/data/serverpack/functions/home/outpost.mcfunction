execute as @s at @s align xyz store result score @s x_back run data get entity @s Pos[0]
execute as @s at @s align xyz store result score @s y_back run data get entity @s Pos[1]
execute as @s at @s align xyz store result score @s z_back run data get entity @s Pos[2]
execute as @s at @s align xyz store result score @s r_back run data get entity @s Rotation[0]
execute as @s at @s align xyz store result score @s l_back run data get entity @s Rotation[1]

execute at @s run summon armor_stand ~ ~ ~ {Tags:["reset"],NoGravity:1b,Invisible:1,Invulnerable:1}

execute as @s at @s store result entity @e[type=armor_stand,limit=1,tag=reset] Pos[0] double 1 run scoreboard players get @p x_outpost
execute as @s at @s store result entity @e[type=armor_stand,limit=1,tag=reset] Pos[1] double 1 run scoreboard players get @p y_outpost
execute as @s at @s store result entity @e[type=armor_stand,limit=1,tag=reset] Pos[2] double 1 run scoreboard players get @p z_outpost
execute as @s at @s store result entity @e[type=armor_stand,limit=1,tag=reset] Rotation[0] float 1 run scoreboard players get @p r_outpost
execute as @s at @s store result entity @e[type=armor_stand,limit=1,tag=reset] Rotation[1] float 1 run scoreboard players get @p l_outpost

execute as @e[type=armor_stand,limit=1,tag=reset] at @s run tp @s ~0.5 ~ ~0.5
execute at @e[type=minecraft:armor_stand,tag=reset] align xyz facing entity @e[type=minecraft:armor_stand,tag=reset] eyes run tp @s @e[type=armor_stand,limit=1,tag=reset]
kill @e[tag=reset,type=armor_stand]

scoreboard players enable @a back