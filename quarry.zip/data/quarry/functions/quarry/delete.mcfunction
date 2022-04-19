execute store result entity @s Pos[0] double 1 run scoreboard players get @s quarry.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s quarry.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s quarry.z
tag @s remove quarry.worker
tag @s add quarry.delete
