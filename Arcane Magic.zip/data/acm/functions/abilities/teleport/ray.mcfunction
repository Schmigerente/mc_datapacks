execute unless block ~ ~ ~ #acm:non_solid run scoreboard players set @s acm.teleport 250
execute unless block ~ ~ ~ #acm:non_solid if block ~ ~1 ~ #acm:non_solid if block ~ ~2 ~ #acm:non_solid run function acm:abilities/teleport/teleport
scoreboard players add @s acm.teleport 1
execute if score @s acm.teleport matches ..250 positioned ^ ^ ^0.25 run function acm:abilities/teleport/ray