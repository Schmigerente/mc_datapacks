tag @s add strangerPlot
execute store result score #idtemp ID run data get entity @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] ArmorItems[3].tag.owner
execute if score @s ID = #idtemp ID run tag @s add ownPlot
execute if score @s ID = #idtemp ID run tag @s remove strangerPlot
execute store result score #idtemp ID run data get entity @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] ArmorItems[3].tag.friendList[0]
execute if score @s ID = #idtemp ID run tag @s add friendPlot
execute if score @s ID = #idtemp ID run tag @s remove strangerPlot
execute store result score #idtemp ID run data get entity @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] ArmorItems[3].tag.friendList[1]
execute if score @s ID = #idtemp ID run tag @s add friendPlot
execute if score @s ID = #idtemp ID run tag @s remove strangerPlot
execute store result score #idtemp ID run data get entity @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] ArmorItems[3].tag.friendList[2]
execute if score @s ID = #idtemp ID run tag @s add friendPlot
execute if score @s ID = #idtemp ID run tag @s remove strangerPlot
scoreboard players reset #idtemp ID

title @s times 20 100 20
title @s[tag=ownPlot] actionbar {"text":"You have entered your Plot","color":"gold"}
title @s[tag=friendPlot] actionbar {"text":"You have entered a friend's Plot","color":"green"}
title @s[tag=strangerPlot] actionbar {"text":"You have entered a stranger's Plot","color":"blue"}