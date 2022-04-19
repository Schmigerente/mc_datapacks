function acm:abilities/summon_wolf/summon
tag @s add acm.summon_wolf
execute as @e[type=wolf,sort=nearest,limit=4] run data modify entity @s Owner set from entity @p[tag=acm.summon_wolf] UUID
tag @s remove acm.summon_wolf
particle minecraft:dust 1 2 1 1 ~ ~0.3 ~ 0.4 0.2 0.4 1 200 normal
playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~

tag @s add acm.success