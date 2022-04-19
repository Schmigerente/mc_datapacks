execute unless block ~ ~ ~ air run scoreboard players set @s acm.ray 100
execute unless block ~ ~ ~ air run function acm:abilities/mine/mine
scoreboard players add @s acm.ray 1
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal
execute if score @s acm.ray matches ..99 positioned ^ ^ ^0.1 run function acm:abilities/mine/ray