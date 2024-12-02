###This function moves ubszone after copying a block
execute as @e[tag=ubszone] at @s store result entity @s Pos[0] double 1 run scoreboard players add @s xx 2
##if xx reaches max, return to x = -4999999 and add 1 to zz
execute as @e[tag=ubszone,scores={xx=-4999970..}] run execute at @s store result entity @s Pos[2] double 1 run scoreboard players add @s zz 2
execute as @e[tag=ubszone,scores={xx=-4999970..}] run execute at @s store result entity @s Pos[0] double 1 run scoreboard players set @s xx -4999999
##if zz reaches max, reset y and add 1 to yy
execute as @e[tag=ubszone,scores={zz=2000021..}] run execute at @s store result entity @s Pos[1] double 1 run scoreboard players add @s yy 2
execute as @e[tag=ubszone,scores={zz=2000021..}] at @s run fill 4999999 ~ 191 5000017 ~3 209 minecraft:barrier
execute as @e[tag=ubszone,scores={zz=2000021..}] run execute at @s store result entity @s Pos[2] double 1 run scoreboard players set @s zz 1999993

##if yy reaches 199, return to y = -60
execute as @e[tag=ubszone,scores={yy=199..}] run execute at @s store result entity @s Pos[1] double 1 run scoreboard players set @s yy -60
