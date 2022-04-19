execute if score #sleep.query sleep matches 1000.. run time add 1000
execute if score #sleep.query sleep matches 1000.. run scoreboard players remove #sleep.query sleep 1000
execute if score #sleep.query sleep matches 100..999 run time add 100
execute if score #sleep.query sleep matches 100..999 run scoreboard players remove #sleep.query sleep 100
execute if score #sleep.query sleep matches 10..99 run time add 10
execute if score #sleep.query sleep matches 10..99 run scoreboard players remove #sleep.query sleep 10
execute if score #sleep.query sleep matches 1..9 run time add 1
execute if score #sleep.query sleep matches 1..9 run scoreboard players remove #sleep.query sleep 1
execute if score #sleep.query sleep matches 1.. run function serverpack:sleep/setdayrecursion