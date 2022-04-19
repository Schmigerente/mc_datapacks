#clear @s minecraft:written_book{warpbook: 1b} 1
execute store result score #x warpbooks.for run data get entity @s Pos[0]
execute store result score #y warpbooks.for run data get entity @s Pos[1]
execute store result score #z warpbooks.for run data get entity @s Pos[2]
execute store result score #r warpbooks.for run data get entity @s Rotation[0]
execute store result score #l warpbooks.for run data get entity @s Rotation[1]

#,{"score":{"name":"#x","objective":"warpbook.for"}},{"text":" ~2 ~"}
#"extra":[{"text":"/teleport @s ~ ~2 ~"}]}}']

give @p written_book{pages:['["",{"text":"Click the button to\\ncreate a new warp book\\n\\n\\n"},{"text":"\\n\\n \\u0020 \\u0020"},{"text":"[Create Book]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/say @s"}}]','[[{"text":"/execute in "},{"nbt":"Dimension","entity":"@s"},{"text":" run teleport @s "},{"score":{"name":"#x","objective":"warpbooks.for"}},{"text":" "},{"score":{"name":"#y","objective":"warpbooks.for"}},{"text":" "},{"score":{"name":"#z","objective":"warpbooks.for"}}]]'],title:"Blank Warp Book",author:"warpbooks.tigerentenclan",string:[]}
#give @p written_book{pages:['{"text":"[Create Book]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/say @s"}}'],title:"Blank Warp Book",author:"warpbooks.tigerentenclan"}