scoreboard objectives add require dummy
scoreboard players set #skillsystem require 1

#level.zip requirement
execute unless score #level require matches 1.. run tellraw @a ["",{"text":"ERROR","color":"red"},{"text":" : The dependency \""},{"text":"level.zip","color":"gold"},{"text":"\" could not be found! Please make sure that you installed it in the datapack directory. If you've installed it, click "},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/datapack enable \"file/level.zip\""}},{"text":" to enable it!"}]
execute unless score #level require matches 1.. run function skillsystem:uninstall