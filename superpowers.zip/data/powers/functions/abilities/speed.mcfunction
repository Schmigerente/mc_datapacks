scoreboard players add @s[scores={sp_sprint=1..,sp_sprint_=..199}] sp_sprint_ 1
effect give @s[scores={sp_sprint_=20..39}] minecraft:speed 1 0 true
effect give @s[scores={sp_sprint_=40..59}] minecraft:speed 1 1 true
effect give @s[scores={sp_sprint_=60..79}] minecraft:speed 1 2 true
effect give @s[scores={sp_sprint_=80..99}] minecraft:speed 1 3 true
effect give @s[scores={sp_sprint_=100..119}] minecraft:speed 1 4 true
effect give @s[scores={sp_sprint_=120..139}] minecraft:speed 1 5 true
effect give @s[scores={sp_sprint_=140..159}] minecraft:speed 1 6 true
effect give @s[scores={sp_sprint_=160..179}] minecraft:speed 1 7 true
effect give @s[scores={sp_sprint_=180..199}] minecraft:speed 1 8 true
effect give @s[scores={sp_sprint_=200}] minecraft:speed 1 9 true
#effect clear @s[scores={sp_sprint_=0}] minecraft:speed
scoreboard players remove @s[scores={sp_sprint=0,sp_sprint_=1..}] sp_sprint_ 5
scoreboard players set @s[scores={sp_sprint_=..-1}] sp_sprint_ 0