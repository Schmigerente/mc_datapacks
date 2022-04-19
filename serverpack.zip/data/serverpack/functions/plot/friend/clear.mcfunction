execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.friendList[0] set value 0
execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.friendList[1] set value 0
execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.friendList[2] set value 0
scoreboard players set @s clearfriends 0