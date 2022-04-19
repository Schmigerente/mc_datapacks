scoreboard players enable @a sethome
scoreboard players enable @a home
scoreboard players enable @a setoutpost
scoreboard players enable @a outpost

execute as @a[scores={home=1}] run function serverpack:home/home
execute as @a[scores={sethome=1}] run function serverpack:home/sethome
execute as @a[scores={outpost=1}] run function serverpack:home/outpost
execute as @a[scores={setoutpost=1}] run function serverpack:home/setoutpost
execute as @a[scores={back=1}] run function serverpack:home/back

scoreboard players set @a sethome 0
scoreboard players set @a home 0
scoreboard players set @a setoutpost 0
scoreboard players set @a outpost 0
scoreboard players set @a back 0