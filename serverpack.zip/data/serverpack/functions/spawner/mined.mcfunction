execute as @a[scores={spawnerMined=1..}] at @s run kill @e[type=minecraft:experience_orb,sort=nearest,limit=5,distance=..10]
scoreboard players reset @a[scores={spawnerMined=1}] spawnerMined
#execute as @a[nbt={SelectedItem: {tag: {Enchantements: [{lvl: 1s, id : "minecraft:silk_touch"}]}}}] run say hi