#########this function, executed by ubszone, restores a debris block
##### the stored block is designated by the position of "cddebrisrestoring"
tag @e[limit=1,tag=restoreque3,sort=random] add ubsdebrisrestoring2
####first, create a marker at the location of the debris' stored block
execute at @e[tag=ubszone] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["ubsstoreddebris"]}
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunkx
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunky
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunkz

####second, copy the stored block to a intermediate location
execute as @e[tag=ubsstoreddebris] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld -4999999 203 1999984 replace

###third step omitted

###fourth, copy stored block to debris location
execute as @e[tag=cddebrisrestoring2] at @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=cddebrisrestoring2] at @s run clone -4999999 203 1999984 -4999999 203 1999984 to minecraft:overworld ~ ~ ~ replace normal

###fifth step omitted

###sixth, destroy debris object
execute as @e[tag=ubsdebrisvis] if score @s ubsdebrisindex = @e[tag=ubsdebrisrestoring2,limit=1] ubsdebrisindex run kill @s
kill @e[tag=ubsdebrisrestoring2]
kill @e[tag=ubsstoreddebris]

###seventh, re-run the function if there are any other blocks getting restored
execute if entity @e[tag=restoreque3] run function pack:universalblockdatastorage/debrisrestoreblockinplace