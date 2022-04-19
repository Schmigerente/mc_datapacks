#=== Set Plot
execute as @a[scores={addplot=1}] at @s run function serverpack:plot/setplot
scoreboard players reset @a[scores={addplot=1}] setplot

#=== Handle Friend Adding
scoreboard players enable @a[tag=ownPlot,scores={addfriend=0}] addfriend
scoreboard players reset @a[tag=!ownPlot] addfriend
scoreboard players set @a[tag=!ownPlot] addfriend 0

#=== Handle Friend Clearing
scoreboard players enable @a[tag=ownPlot,scores={clearfriends=0}] clearfriends
scoreboard players reset @a[tag=!ownPlot] clearfriends
scoreboard players set @a[tag=!ownPlot] clearfriends 0

#add friend to plot trigger

execute as @a[scores={addfriend=1}] at @s run function serverpack:plot/friend/add
effect give @a[tag=selected] minecraft:glowing 1 1 true
execute as @a[scores={accept=1..,addfriend=2}] at @s run function serverpack:plot/friend/accept
execute as @a[scores={decline=1..,addfriend=2}] as @s run function serverpack:plot/friend/decline
tag @a[tag=noPlot,tag=selected] remove selected

#remove friend trigger
execute as @a[scores={clearfriends=1}] at @s run function serverpack:plot/friend/clear

#delete plot trigger
scoreboard players enable @a[tag=ownPlot,scores={deleteplot=0}] deleteplot
execute as @a[scores={deleteplot=1}] at @s run function serverpack:plot/deleteplot
scoreboard players reset @a[tag=!ownPlot] deleteplot
scoreboard players set @a[tag=!ownPlot] deleteplot 0