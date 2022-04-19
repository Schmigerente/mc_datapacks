#checking dependencies
scoreboard objectives add require dummy
scoreboard players add #depth require 1

schedule function skillsystem:required 2t

#initializing variables
scoreboard objectives add skillPoints dummy
scoreboard objectives add skillSpeed dummy
scoreboard objectives add skillHealth dummy
scoreboard objectives add skillAttack dummy
scoreboard objectives add skillArmor dummy
scoreboard objectives add skillLuck dummy
scoreboard objectives add skillAtkSpd dummy

scoreboard objectives add milk.drink minecraft.used:minecraft.milk_bucket
