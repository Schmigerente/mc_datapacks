tag @s remove sp_atlantean
tag @s remove sp_invincibility
tag @s remove sp_invisibility
tag @s remove sp_jump
tag @s remove sp_regeneration
tag @s remove sp_speed
tag @s remove sp_strength
tag @s remove sp_teleport
tag @s remove sp_divine
tag @s remove sp_corrupt

execute store result score @s sp_random run loot spawn ~ ~ ~ loot powers:entities/random
scoreboard players set @s sp_power 11
execute store result score @s sp_power run scoreboard players operation @s sp_random %= @s sp_power 

tag @s[scores={sp_power=1}] add sp_atlantean
tag @s[scores={sp_power=2}] add sp_invincibility
tag @s[scores={sp_power=3}] add sp_invisibility
tag @s[scores={sp_power=4}] add sp_jump
tag @s[scores={sp_power=5}] add sp_regeneration
tag @s[scores={sp_power=6}] add sp_speed
tag @s[scores={sp_power=7}] add sp_strength
tag @s[scores={sp_power=8}] add sp_teleport
tag @s[scores={sp_power=9}] add sp_divine
tag @s[scores={sp_power=10}] add sp_corrupt

title @s times 20 100 20
title @s[scores={sp_power=0}] title {"text":"Normal","bold":true,"italic":true,"color":"gray"}
title @s[scores={sp_power=1}] title {"text":"Atlantean","bold":true,"italic":true,"color":"dark_aqua"}
title @s[scores={sp_power=2}] title {"text":"Invincibility","bold":true,"italic":true,"color":"yellow"}
title @s[scores={sp_power=3}] title {"text":"Invisibility","bold":true,"italic":true,"color":"white"}
title @s[scores={sp_power=4}] title {"text":"Super Jump","bold":true,"italic":true,"color":"green"}
title @s[scores={sp_power=5}] title {"text":"Regeneration","bold":true,"italic":true,"color":"light_purple"}
title @s[scores={sp_power=6}] title {"text":"Speed","bold":true,"italic":true,"color":"aqua"}
title @s[scores={sp_power=7}] title {"text":"Strength","bold":true,"italic":true,"color":"dark_red"}
title @s[scores={sp_power=8}] title {"text":"Teleportation","bold":true,"italic":true,"color":"dark_purple"}
title @s[scores={sp_power=9}] title {"text":"Divine","bold":true,"italic":true,"color":"gold"}
title @s[scores={sp_power=10}] title {"text":"Corrupt","bold":true,"italic":true,"color":"black"}