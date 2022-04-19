execute as @e[type=armor_stand,tag=plotMarker] at @s align y unless block ~ ~2 ~ minecraft:spawner run tag @s add replaceSpawner
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest,tag=replaceSpawner] at @s align y run setblock ~ ~2 ~ minecraft:spawner{RequiredPlayerRange:0s,SpawnData:{id:"minecraft:area_effect_cloud"}} replace
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest,tag=replaceSpawner] at @s align y run data merge block ~ ~2 ~ {RequiredPlayerRange:0s}
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest,tag=replaceSpawner] at @s align y run kill @e[type=item,limit=1,sort=nearest,nbt={Item: {id: "minecraft:spawner"}}]
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest,tag=replaceSpawner] at @s align y run kill @e[type=minecraft:experience_orb,sort=nearest,limit=5,distance=..1]
tag @e[tag=replaceSpawner] remove replaceSpawner

tag @a[tag=strangerPlot,tag=!checked] remove strangerPlot
tag @a[tag=friendPlot,tag=!checked] remove friendPlot
tag @a[tag=ownPlot,tag=!checked] remove ownPlot

execute as @e[type=armor_stand,tag=plotMarker] at @s positioned ~-20 0 ~-20 as @a[dx=40,dy=255,dz=40,tag=!checked] at @s run function serverpack:plot/checkplotstatus
tag @a[tag=noPlot,tag=checked] remove noPlot
tag @a[tag=!checked,tag=!noPlot] add noPlot
tag @a[tag=checked] remove checked
execute as @e[type=armor_stand,tag=plotMarker] at @s positioned ~-20 0 ~-20 as @a[dx=40,dy=255,dz=40] run tag @s add checked

gamemode adventure @a[tag=!ignore,tag=strangerPlot]
gamemode survival @a[tag=!ignore,tag=friendPlot]
gamemode survival @a[tag=!ignore,tag=ownPlot]
gamemode survival @a[tag=!ignore,tag=noPlot,tag=!checked]

execute as @e[type=armor_stand,tag=plotMarker] at @s positioned ~-20 0 ~-20 as @a[dx=40,dy=255,dz=40] run tag @s add checked

title @s times 20 100 20
title @a[tag=!noPlot,tag=!checked] actionbar {"text":"You have entered the wilderness","color":"red"}

