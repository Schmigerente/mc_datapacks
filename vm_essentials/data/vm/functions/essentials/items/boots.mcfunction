execute as @a[tag=!noBoots] unless data entity @s {Inventory: [{Slot:100b, id: "minecraft:leather_boots", Count:1b, tag: {HideFlags: 47}}]} run tag @s add gb
clear @a[tag=gb] minecraft:leather_boots{display:{Name:"{\"text\":\"Simple Boots\",\"color\":\"gold\",\"bold\":true}"}}
replaceitem entity @a[tag=gb] armor.feet minecraft:leather_boots{nodrop:1b,display:{Name:"{\"text\":\"Simple Boots\",\"color\":\"gold\",\"bold\":true}",color:16756516},HideFlags:47,Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-14,Operation:0,UUIDLeast:343963,UUIDMost:572729,Slot:"feet"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:500,Operation:0,UUIDLeast:22273,UUIDMost:398377,Slot:"feet"}]} 1
tag @a[tag=gb] remove gb
kill @e[type=item,nbt={Item: {tag: {nodrop:1b}}}]

replaceitem entity @a[tag=fight,nbt={SelectedItem:{tag:{Charged:0b}}}] hotbar.0 minecraft:crossbow{ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1b}
execute as @a[tag=fight] unless data entity @s SelectedItem.id run replaceitem entity @s hotbar.1 minecraft:trident{Unbreakable:1b}
replaceitem entity @a[tag=fight] hotbar.2 minecraft:sponge 8
effect give @a[tag=fight] minecraft:haste 3 255 true
effect give @a[tag=fight] minecraft:speed 3 2 true
kill @e[type=!minecraft:player,nbt={inGround:1b}]
kill @e[type=item]