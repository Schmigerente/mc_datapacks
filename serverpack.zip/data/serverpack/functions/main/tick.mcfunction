function serverpack:home/trigger
function serverpack:plot/trigger
function serverpack:plot/checkplot
function serverpack:sleep/sleep
function serverpack:spawner/mined
function serverpack:xp/xptest

execute as @a[tag=!hasID] run function serverpack:id/setid

execute as @e[type=minecraft:shulker,nbt={Dimension:0}] run kill @s