particle minecraft:dust 1 2 1 1 ~ ~1 ~ 1.6 1.6 1.6 1 1000 normal
summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"ggg",NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:60,ShowParticles:0b}]}

execute as @s[tag=acm.overload.up] run tp @s ~ ~3 ~
execute as @s[tag=acm.overload.up] run tp @s ~ ~3 ~