tag @s add exclude
execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest] at @s run tag @p[tag=!exclude,distance=..10] add selected
scoreboard players enable @s accept
scoreboard players enable @s decline
scoreboard players set @s addfriend 2

#execute store result entity @e[type=minecraft:armor_stand,tag=plotMarker,limit=1,sort=nearest] ArmorItems[3].tag.friend int 1 run scoreboard players get @p[tag=selected] ID
