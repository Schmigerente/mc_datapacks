execute as @a[scores={milk.drink=1..}] if data entity @s {Inventory:[{Slot:-106b, id: "minecraft:nether_star"}]} run function skillsystem:skillups/reset
execute as @a[scores={milk.drink=1..}] if data entity @s {Inventory:[{Slot:-106b, id: "minecraft:nether_star"}]} run function skillsystem:skillups/showscreen
execute as @a[scores={milk.drink=1..}] if data entity @s {Inventory:[{Slot:-106b, id: "minecraft:nether_star"}]} run clear @s minecraft:nether_star 1

execute as @a[scores={milk.drink=1..}] if data entity @s {Inventory:[{Slot:-106b, id: "minecraft:paper"}]} run function skillsystem:skillups/showscreen

scoreboard players set @a[scores={milk.drink=1..}] milk.drink 0