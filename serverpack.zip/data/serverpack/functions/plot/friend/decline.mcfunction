execute as @e[type=armor_stand,tag=plotMarker,limit=1,sort=nearest] at @s run tag @p[tag=selected,distance=..30] remove selected

scoreboard players reset @s decline
scoreboard players reset @s accept
tag @s remove exclude
scoreboard players set @s addfriend 0