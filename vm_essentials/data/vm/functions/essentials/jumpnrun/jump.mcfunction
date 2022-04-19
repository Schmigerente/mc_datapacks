execute at @a[tag=!jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~-2 ~ minecraft:emerald_block run tag @p add jumpnrun

#20 XP
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:iron_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p add jnr20
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:iron_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p remove jumpnrun
tellraw @a[tag=jnr20] ["",{"text":"You completed this Jump n Run. Here are your ","bold":true,"color":"gray"},{"text":"20xp","bold":true,"color":"dark_green"},{"text":" reward !","bold":true,"color":"gray"}]
scoreboard players add @a[tag=jnr20] xp 20
tag @a[tag=jnr20] remove jnr20

#50 XP
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:gold_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p add jnr50
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:gold_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p remove jumpnrun
tellraw @a[tag=jnr50] ["",{"text":"You completed this Jump n Run. Here are your ","bold":true,"color":"gray"},{"text":"50xp","bold":true,"color":"dark_green"},{"text":" reward !","bold":true,"color":"gray"}]
scoreboard players add @a[tag=jnr50] xp 50
tag @a[tag=jnr50] remove jnr50

#100 XP
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:diamond_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p add jnr100
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:diamond_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p remove jumpnrun
tellraw @a[tag=jnr100] ["",{"text":"You completed this Jump n Run. Here are your ","bold":true,"color":"gray"},{"text":"100xp","bold":true,"color":"dark_green"},{"text":" reward !","bold":true,"color":"gray"}]
scoreboard players add @a[tag=jnr100] xp 100
tag @a[tag=jnr100] remove jnr100

#200 XP
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:emerald_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p add jnr200
execute at @a[tag=jumpnrun] as @p align xyz if block ~ ~-1 ~ minecraft:emerald_ore if block ~ ~-2 ~ minecraft:emerald_block run tag @p remove jumpnrun
tellraw @a[tag=jnr200] ["",{"text":"You completed this Jump n Run. Here are your ","bold":true,"color":"gray"},{"text":"200xp","bold":true,"color":"dark_green"},{"text":" reward !","bold":true,"color":"gray"}]
scoreboard players add @a[tag=jnr200] xp 200
tag @a[tag=jnr200] remove jnr200