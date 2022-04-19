scoreboard objectives add x_home dummy
scoreboard objectives add y_home dummy
scoreboard objectives add z_home dummy
scoreboard objectives add r_home dummy
scoreboard objectives add l_home dummy
scoreboard objectives add x_outpost dummy
scoreboard objectives add y_outpost dummy
scoreboard objectives add z_outpost dummy
scoreboard objectives add r_outpost dummy
scoreboard objectives add l_outpost dummy
scoreboard objectives add x_back dummy
scoreboard objectives add y_back dummy
scoreboard objectives add z_back dummy
scoreboard objectives add r_back dummy
scoreboard objectives add l_back dummy

scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add sethome trigger
scoreboard objectives add home trigger
scoreboard objectives add setoutpost trigger
scoreboard objectives add outpost trigger
scoreboard objectives add back trigger



scoreboard objectives add setplot trigger
scoreboard objectives add addfriend trigger
scoreboard objectives add clearfriends trigger
scoreboard objectives add deleteplot trigger
scoreboard objectives add deleteplot trigger
scoreboard objectives add accept trigger
scoreboard objectives add decline trigger

scoreboard objectives add sleep dummy
scoreboard objectives add sleeptimer dummy

scoreboard objectives add spawnerMined minecraft.mined:minecraft.spawner

scoreboard objectives add xpPoints dummy
scoreboard objectives add xpbottlesused minecraft.used:minecraft.experience_bottle

scoreboard objectives add ID dummy
execute unless score #idcounter ID matches 1.. run scoreboard players set #idcounter ID 1
execute unless score #idcounter ID matches 1.. run tag @a remove hasID