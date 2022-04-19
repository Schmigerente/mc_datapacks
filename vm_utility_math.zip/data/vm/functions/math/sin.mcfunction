#initialise variables
scoreboard players set %var0 math 180
scoreboard players set %var1 math 4
scoreboard players operation %var2 math = %input0 math
scoreboard players operation %var3 math = %input1 math
scoreboard players set %var4 math 360
scoreboard players set %var5 math 1

#handle values between 181 and 360
scoreboard players operation %input0 math %= %var4 math
execute if score %input0 math > %var0 math run scoreboard players set %stack math 360
execute if score %input0 math > %var0 math run scoreboard players operation %stack math -= %var2 math
execute if score %input0 math > %var0 math run scoreboard players operation %var2 math = %stack math
execute if score %input0 math > %var0 math run scoreboard players set %var5 math -1

#calculate divider
scoreboard players set %stack math 180
scoreboard players operation %stack math -= %var2 math
scoreboard players operation %stack math *= %var2 math
scoreboard players operation %var6 math = %stack math
scoreboard players set %stack math 40500
scoreboard players operation %stack math -= %var6 math
scoreboard players operation %var7 math = %stack math

#calcuclate dividend
scoreboard players set %stack math 180
scoreboard players operation %stack math -= %var2 math
scoreboard players operation %stack math *= %var2 math
scoreboard players operation %stack math *= %var1 math
scoreboard players operation %stack math *= %var3 math

# divide , negate if between 181 and 360, output
scoreboard players operation %stack math /= %var7 math
scoreboard players operation %stack math *= %var5 math
scoreboard players operation %output0 math = %stack math

#clear variables
scoreboard players reset %stack math
scoreboard players reset %var0 math
scoreboard players reset %var1 math
scoreboard players reset %var2 math
scoreboard players reset %var3 math
scoreboard players reset %var4 math
scoreboard players reset %var5 math
scoreboard players reset %var6 math
scoreboard players reset %var7 math
scoreboard players reset %var8 math