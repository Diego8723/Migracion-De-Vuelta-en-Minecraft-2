###This function moves mandomstoreinventory after copying a block
execute as @e[tag=mandomstoreinventory] at @s store result entity @s Pos[0] double 1 run scoreboard players add @s xx 2
##if xx reaches max, return to x = 5000000 and add 1 to zz
execute as @e[tag=mandomstoreinventory,scores={xx=5000015..}] run execute at @s store result entity @s Pos[2] double 1 run scoreboard players add @s zz 2
execute as @e[tag=mandomstoreinventory,scores={xx=5000015..}] run execute at @s store result entity @s Pos[0] double 1 run scoreboard players set @s xx 5000000
##if zz reaches max, reset z
execute as @e[tag=mandomstoreinventory,scores={zz=207..}] run execute at @s store result entity @s Pos[2] double 1 run scoreboard players set @s zz 192

