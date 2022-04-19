scoreboard players set @s skillAttack 0
scoreboard players set @s skillAtkSpd 0
scoreboard players set @s skillArmor 0
scoreboard players set @s skillHealth 0
scoreboard players set @s skillLuck 0
scoreboard players set @s skillSpeed 0
execute if score @s level matches 0..249 run scoreboard players operation @s skillPoints = @s level
execute if score @s level matches 249.. run scoreboard players set @s skillPoints 250
function skillsystem:skillups/setvalues