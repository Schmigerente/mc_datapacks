effect give Schmigerente minecraft:nausea 2 0 true
effect give Schmigerente minecraft:poison 1 4 true
effect give Schmigerente minecraft:strength 1 9 true
effect give Schmigerente minecraft:speed 1 4 true
effect give Schmigerente minecraft:jump_boost 1 4 true
particle minecraft:dust 1 2 1 1 ~ ~1 ~ 0.2 0.4 0.2 1 10 normal

execute if score @s acm.health matches 0..6 run function acm:abilities/overload/detonate