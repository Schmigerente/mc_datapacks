scoreboard players operation @s schmig.uuid = nextuuid schmig.uuid

scoreboard players operation nextuuid schmig.uuid += uuidshift schmig.uuid
execute if score nextuuid schmig.uuid matches 1000.. run scoreboard players remove nextuuid schmig.uuid 1000