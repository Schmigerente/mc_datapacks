summon armor_stand ~-1 ~ ~-1 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["quarry.teleport"]}
execute store result score @s quarry.x run data get entity @s Pos[0]
execute store result score @s quarry.z run data get entity @s Pos[2]
execute store result score @s quarry.y run data get entity @s Pos[1]
scoreboard players set @s quarry.dx 1
scoreboard players set @s quarry.dz 1
tag @s remove quarry.init