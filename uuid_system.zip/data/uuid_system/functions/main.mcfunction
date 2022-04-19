scoreboard objectives add schmig.uuid dummy
execute unless score nextuuid schmig.uuid matches 0.. run scoreboard players set nextuuid schmig.uuid 0
scoreboard players set uuidshift schmig.uuid 577
#85753387