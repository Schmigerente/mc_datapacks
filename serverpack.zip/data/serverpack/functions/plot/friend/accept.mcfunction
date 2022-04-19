execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.friend int 1 run scoreboard players get @p[tag=selected] ID
execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.friendList prepend from entity @s ArmorItems[3].tag.friend
execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.friend set value 0
execute as @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] if data entity @s ArmorItems[3].tag.friendList[3] run data remove entity @s ArmorItems[3].tag.friendList[3]
execute as @p[tag=selected] run tag @s remove checked
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest] at @s run tag @p[tag=selected,distance=..30] remove selected
scoreboard players reset @s decline
scoreboard players reset @s accept
tag @s remove exclude
scoreboard players set @s addfriend 0