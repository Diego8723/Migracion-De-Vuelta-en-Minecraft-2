#########this function, executed by ubszone, restores a debris block
##### the stored block is designated by the position of "cddebrisrestoring"
tag @e[limit=1,tag=restoreque2,sort=random,tag=gestoredinzone] add ubsdebrisrestoring2
####first, create a marker at the location of the debris' stored block
execute at @e[tag=ubszone] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["ubsstoreddebris"]}
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunkx
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunky
execute as @e[tag=ubsstoreddebris] store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=ubsdebrisrestoring2,limit=1] ubschunkz

####second, copy the stored block to a intermediate location
execute as @e[tag=ubsstoreddebris] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld -4999999 203 1999984 replace
execute as @e[tag=ubsstoreddebris] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld -4999999 203 1999984 replace
execute as @e[tag=ubsstoreddebris] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld -4999999 203 1999984 replace
###third step omitted

###fourth, copy stored block to debris location
execute as @e[tag=ubsdebrisrestoring2] at @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=ubsdebrisrestoring2] at @s if dimension minecraft:overworld run clone from minecraft:overworld -4999999 203 1999984 -4999999 203 1999984 to minecraft:overworld ~ ~ ~ replace normal
execute as @e[tag=ubsdebrisrestoring2] at @s if dimension minecraft:the_nether run clone from minecraft:overworld -4999999 203 1999984 -4999999 203 1999984 to minecraft:the_nether ~ ~ ~ replace normal
execute as @e[tag=ubsdebrisrestoring2] at @s if dimension minecraft:the_end run clone from minecraft:overworld -4999999 203 1999984 -4999999 203 1999984 to minecraft:the_end ~ ~ ~ replace normal
###fifth step omitted

###sixth, destroy debris object
execute as @e[tag=ubsdebrisrestoring2] at @s run tp ~ -200 ~
execute as @e[tag=ubsdebrisrestoring2] at @s run kill @s
kill @e[tag=ubsstoreddebris]

###seventh, re-run the function if there are any other blocks getting restored
execute if entity @e[tag=restoreque2,tag=gestoredinzone] run function pack:universalblockdatastorage/gerestoreblockinplace