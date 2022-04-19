execute as @a store result score @s xpPoints run data get entity @s XpTotal
execute as @a[scores={xpPoints=7..,sneaking=1..},nbt={SelectedItem: {id: "minecraft:glass_bottle"}}] run function serverpack:xp/xpbottle
scoreboard players set @a sneaking 0

execute as @a[scores={xpbottlesused=1..}] run give @s minecraft:glass_bottle
scoreboard players remove @a[scores={xpbottlesused=1..}] xpbottlesused 1