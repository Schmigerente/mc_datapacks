execute as @a store result score @s xp_syringes.current_xp run data get entity @s XpTotal

execute as @a[nbt={SelectedItem:{tag:{type:"syringe_full"}}}] if score @s xp_syringes.clicked matches 1.. run function xp_syringes:used/full_syringe
execute as @a[nbt={SelectedItem:{tag:{type:"syringe_empty"}}}] if score @s xp_syringes.clicked matches 1.. if score @s xp_syringes.current_xp matches 100.. run function xp_syringes:used/empty_syringe
scoreboard players set @a[scores={xp_syringes.clicked=1..}] xp_syringes.clicked 0

