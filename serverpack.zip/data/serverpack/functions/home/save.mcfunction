execute as @s at @s align xyz store result score @s x_stored run data get entity @s Pos[0]
execute as @s at @s align xyz store result score @s y_stored run data get entity @s Pos[1]
execute as @s at @s align xyz store result score @s z_stored run data get entity @s Pos[2]
execute as @s at @s align xyz store result score @s r_stored run data get entity @s Rotation[0]
execute as @s at @s align xyz store result score @s l_stored run data get entity @s Rotation[1]
execute as @s at @s align xyz run spawnpoint @s ~ ~ ~ 