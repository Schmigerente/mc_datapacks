execute as @a[distance=..5] run effect give @s minecraft:resistance 300 0 true
execute as @a[distance=..5] run effect give @s minecraft:strength 300 0 true
playsound minecraft:entity.pillager.celebrate ambient @a[distance=..10] ~ ~ ~
tag @s add acm.success