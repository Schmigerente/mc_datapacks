execute as @a store result score @s vanillaXp run data get entity @s XpTotal
execute as @a run scoreboard players operation @s vanillaXp -= @s offsetXp
execute as @a run scoreboard players operation @s xp += @s vanillaXp
execute as @a store result score @s offsetXp run data get entity @s XpTotal

execute as @a[scores={xp_cap=0}] at @s run function level:level/reload
execute at @a as @p run scoreboard players operation @p xp_minus_xp_cap = @p xp
execute at @a as @p run scoreboard players operation @p xp_minus_xp_cap -= @p xp_cap
execute at @a[scores={xp_minus_xp_cap=0..}] as @p run function level:level/levelup