execute unless block ~ ~ ~ #acm:non_solid run scoreboard players set @s acm.ray 250
execute unless block ~ ~ ~ #acm:non_solid if block ~ ~1 ~ #acm:non_solid if block ~ ~2 ~ #acm:non_solid run function acm:abilities/lightning/summon
scoreboard players add @s acm.ray 1
execute if score @s acm.ray matches ..250 positioned ^ ^ ^0.25 run function acm:abilities/lightning/ray