effect clear @s[tag=sp_jump] levitation
tag @s[tag=sp_jump_apply] remove sp_jump_apply
tag @s[scores={sp_sneak=1..,sp_jump=1..}] add sp_jump_apply
effect give @s[tag=sp_jump_apply] levitation 1 100 true 
