execute store result score @s acm.xpcost run data get entity @s SelectedItem.tag.acm_cost 0
execute store result score @s acm.xp run data get entity @s XpTotal 1

execute as @s[tag=!acm.creative] if score @s acm.xp < @s acm.xpcost run title @s actionbar {"text":"You dont have enought experience to perform this action","color":"dark_red"}

execute as @s[tag=!acm.creative] unless score @s acm.xp < @s acm.xpcost run function acm:abilities/run
execute as @s[tag=acm.creative] run function acm:abilities/run

execute as @s[tag=!acm.creative,tag=acm.success] if score @s acm.xp >= @s acm.xpcost run function acm:abilities/rem_xp
tag @s[tag=acm.success] remove acm.success