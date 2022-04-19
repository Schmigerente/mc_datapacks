scoreboard objectives remove x_home
scoreboard objectives remove y_home
scoreboard objectives remove z_home
scoreboard objectives remove r_home
scoreboard objectives remove l_home
scoreboard objectives remove x_outpost
scoreboard objectives remove y_outpost
scoreboard objectives remove z_outpost
scoreboard objectives remove r_outpost
scoreboard objectives remove l_outpost
scoreboard objectives remove x_back
scoreboard objectives remove y_back
scoreboard objectives remove z_back
scoreboard objectives remove r_back
scoreboard objectives remove l_back

scoreboard objectives remove sneaking

scoreboard objectives remove sethome
scoreboard objectives remove home
scoreboard objectives remove setoutpost
scoreboard objectives remove outpost
scoreboard objectives remove back


scoreboard objectives remove addplot
scoreboard objectives remove deleteplot
scoreboard objectives remove addfriend
scoreboard objectives remove clearfriends
scoreboard objectives remove deleteplot
scoreboard objectives remove accept
scoreboard objectives remove decline

scoreboard objectives remove sleep
scoreboard objectives remove sleeptimer

scoreboard objectives remove ID

scoreboard objectives remove spawnerMined

scoreboard objectives remove xpPoints
scoreboard objectives remove xpbottlesused

execute as @e[type=armor_stand,tag=plotMarker] at @s align y run setblock ~ ~2 ~ air replace
kill @e[tag=plotMarker]

tag @a remove noPlot
tag @a remove ownPlot
tag @a remove friendPlot
tag @a remove strangerPlot
tag @a remove hasID
tag @a remove checked

datapack disable "file/serverpack.zip"