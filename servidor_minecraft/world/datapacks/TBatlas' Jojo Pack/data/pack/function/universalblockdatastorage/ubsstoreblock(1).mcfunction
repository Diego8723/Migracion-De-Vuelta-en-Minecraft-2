#########this function, executed by ubszone, stores a debris block
##### the stored block is designated by the position of "gestoredblockhandling"

####first, copy the block from the position of gestoredblockhandling
execute as @e[tag=gestoredblockhandling] at @s run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld 5000000 200 192 replace

####second, copy the block to ubszone's position
execute as @e[tag=ubszone] at @s run clone 5000000 200 192 5000000 200 192 to minecraft:overworld ~ ~ ~ replace

####third, give coordinates of stored block to gestoredblockhandling
execute store result score @e[tag=gestoredblockhandling,limit=1] ubschunkx run scoreboard players get @e[tag=ubszone,limit=1] xx
execute store result score @e[tag=gestoredblockhandling,limit=1] ubschunky run scoreboard players get @e[tag=ubszone,limit=1] yy
execute store result score @e[tag=gestoredblockhandling,limit=1] ubschunkz run scoreboard players get @e[tag=ubszone,limit=1] zz

####fourth,actuate ubszone's position scoreboard, storing result in ubszone's position NBT
function pack:universalblockdatastorage/actuateubszone

##fifth, destroy block at position of "gestoredblockhandling"
execute at @e[tag=gestoredblockhandling] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace
