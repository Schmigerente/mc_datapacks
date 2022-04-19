execute store result score #sleep.query sleep run time query daytime
scoreboard players set #sleep.day sleep 24000
scoreboard players operation #sleep.day sleep -= #sleep.query sleep
scoreboard players operation #sleep.query sleep = #sleep.day sleep
function serverpack:sleep/setdayrecursion