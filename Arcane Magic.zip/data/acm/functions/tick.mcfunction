execute as @a[scores={acm.click=1..}] at @s if data entity @s SelectedItem.tag.acm_skill run function acm:abilities/cost
scoreboard players set @a[scores={acm.click=1..}] acm.click 0

execute as @a[tag=acm.overload] at @s run function acm:abilities/overload/tick
execute as @e[type=armor_stand,tag=acm.overload] at @s run function acm:abilities/overload/helper

tag @a remove acm.creative
execute as @a[nbt={abilities: {mayfly:1b, instabuild:1b, invulnerable:1b}}] run tag @s add acm.creative

scoreboard players add tick acm.ticks 1
execute if score tick acm.ticks matches 20.. run scoreboard players set tick acm.ticks 0
execute if score tick acm.ticks matches 0 run function acm:second


