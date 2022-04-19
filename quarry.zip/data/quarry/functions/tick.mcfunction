tag @e[type=item,nbt={Item:{id: "minecraft:diamond_pickaxe"}}] add quarry.diamond_pickaxe
tag @e[type=item,nbt={Item:{id: "minecraft:coal_block", Count:1b}}] add quarry.coal_block
tag @e[type=item,nbt={Item:{id: "minecraft:redstone_block", Count:1b}}] add quarry.redstone_block
tag @e[type=item,nbt={Item:{id: "minecraft:piston", Count:1b}}] add quarry.piston

#look for diamond pickaxes

tag @e[type=item,nbt={Item:{id: "minecraft:diamond_pickaxe"}}] add quarry.gen
tag @e[type=item,nbt={Item:{id: "minecraft:coal_block", Count:1b}}] add quarry.gen
tag @e[type=item,nbt={Item:{id: "minecraft:redstone_block", Count:1b}}] add quarry.gen

execute as @e[tag=quarry.diamond_pickaxe] at @s as @e[distance=..1,limit=1,tag=quarry.coal_block] at @s as @e[distance=..1,limit=1,type=item,tag=quarry.redstone_block] at @s run tag @e[distance=..1,type=item,tag=quarry.gen] add quarry.rem
execute as @e[tag=quarry.rem,tag=quarry.diamond_pickaxe] at @s run function quarry:quarry/create
execute as @e[tag=quarry.rem,tag=quarry.diamond_pickaxe] at @s run kill @e[distance=..1,type=item,tag=quarry.rem]


tag @e[type=item,nbt={Item:{id: "minecraft:redstone_block", Count:1b}}] add quarry.hop
tag @e[type=item,nbt={Item:{id: "minecraft:coal_block", Count:1b}}] add quarry.coal_block
tag @e[type=item,nbt={Item:{id: "minecraft:redstone_block", Count:1b}}] add quarry.redstone_block

execute as @e[tag=quarry.diamond_pickaxe] at @s as @e[distance=..1,limit=1,tag=quarry.coal_block] at @s as @e[distance=..1,limit=1,type=item,tag=quarry.redstone_block] at @s run tag @e[distance=..1,type=item,tag=quarry.gen] add quarry.rem
execute as @e[tag=quarry.rem,tag=quarry.diamond_pickaxe] at @s run function quarry:quarry/create
execute as @e[tag=quarry.rem,tag=quarry.diamond_pickaxe] at @s run kill @e[distance=..1,type=item,tag=quarry.rem]



execute as @e[type=endermite,tag=quarry.gen] at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["quarry.worker","quarry.init"]}
execute as @e[type=armor_stand,tag=quarry.init] at @s run function quarry:quarry/init
kill @e[type=endermite,tag=quarry.gen]

execute as @e[type=armor_stand,tag=quarry.delete] at @s run function quarry:quarry/kill

execute as @e[type=armor_stand,tag=quarry.worker] at @s run function quarry:quarry/step
execute as @e[type=armor_stand,tag=quarry.teleport] at @s positioned ~0.5 ~ ~0.5 as @e[type=item,dx=16,dy=-384,dz=16] positioned ~-0.5 ~ ~-0.5 run tp @s ~ ~ ~