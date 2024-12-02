#########this function, executed by ubszone, restores a debris block
##### the stored block is designated by the position of "cddebrisrestoring"
tag @e[limit=1,tag=restoreque,sort=random] add cddebrisrestoring

####first, create a marker at the location of the debris' stored block
execute at @e[tag=ubszone] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["cdstoreddebris"]}
execute as @e[tag=cdstoreddebris] store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=cddebrisrestoring,limit=1] cdchunkx
execute as @e[tag=cdstoreddebris] store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=cddebrisrestoring,limit=1] cdchunky
execute as @e[tag=cdstoreddebris] store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=cddebrisrestoring,limit=1] cdchunkz

####second, copy the stored block to a intermediate location
execute as @e[tag=cdstoreddebris] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld 5000000 203 192 replace

###third, move debris object to original location
execute as @e[tag=cddebrisrestoring] store result entity @s Pos[0] double 1 run scoreboard players get @s originx
execute as @e[tag=cddebrisrestoring] store result entity @s Pos[1] double 1 run scoreboard players get @s originy
execute as @e[tag=cddebrisrestoring] store result entity @s Pos[2] double 1 run scoreboard players get @s originz
execute at @e[tag=cddebrisrestoring] run playsound minecraft:cd.toggle.restore player @a ~ ~ ~ .1 1

###fourth, copy stored block to debris location
execute as @e[tag=cddebrisrestoring] at @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=cddebrisrestoring] at @s run clone 5000000 203 192 5000000 203 192 to minecraft:overworld ~ ~ ~ replace normal

###fifth, particle effects
execute as @e[tag=cddebrisrestoring] at @s run particle dust 1.000 0.902 0.012 1 ~ ~.5 ~ .4 .4 .4 .1 20 normal
###sixth, destroy debris object
execute as @e[tag=cddebrisrestoring] at @s run damage @e[distance=.1...3,sort=random,limit=1,type=!#pack:not_alive] 6 minecraft:falling_block
execute as @e[tag=cddebrisvis] if score @s cddebrisindex = @e[tag=cddebrisrestoring,limit=1] cddebrisindex run kill @s
kill @e[tag=cddebrisrestoring]
kill @e[tag=cdstoreddebris]
###seventh, re-run the function if there are any other blocks getting restored
execute if entity @e[tag=restoreque] run function pack:universalblockdatastorage/debrisrestoreblock

