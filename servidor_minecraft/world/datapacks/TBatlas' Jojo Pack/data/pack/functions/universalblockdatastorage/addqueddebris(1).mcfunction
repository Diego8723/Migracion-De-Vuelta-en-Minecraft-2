#####This function creates a singular debris after locating a queued debris armor stand.

####first, designate a random queued stand to be our "active debris"
tag @e[tag=ubsdebrispos,tag=queued,limit=1] add ubsdebrishandling

##This function is used by GE to store block data from mobs it transforms. In general,

#### create visuals for the new debris. Get current debris index, add to both the physical stand and visual stand (after creation), then add 1 to score of ubszone
##create block display
#execute at @e[tag=ubsdebrishandling] run summon block_display ~ ~ ~ {NoGravity:0b,width:0.5f,height:0.5f,Tags:["ubsnewdebrisvis"],block_state:{Name:"minecraft:air"}}
##set ubsdebrishandling's head to be the block
#execute as @e[tag=ubsdebrishandling,limit=1] at @s run loot replace entity @s armor.head mine ~ ~ ~
#tag @e[tag=ubsnewdebrisvis] add ubsdebrisvis
##get block from ubsdebrishandling's head and apply it to cdnewdebrisvis
#data modify entity @e[tag=ubsnewdebrisvis,limit=1] block_state.Name set from entity @e[tag=ubsdebrishandling,limit=1] ArmorItems[3].id



##get scores
execute store result score @e[tag=ubsdebrishandling] ubsdebrisindex run scoreboard players get @e[tag=ubszone,limit=1] ubsdebrisindex
execute store result score @e[tag=ubsnewdebrisvis] ubsdebrisindex run scoreboard players get @e[tag=ubszone,limit=1] ubsdebrisindex
##actuate
scoreboard players add @e[tag=ubszone,limit=1] ubsdebrisindex 1
scoreboard players set @e[tag=ubsdebrishandling] ubsdebrislifetime 0
##store debris original location
execute store result score @s originx run data get entity @s Pos[0]
execute store result score @s originy run data get entity @s Pos[1]
execute store result score @s originz run data get entity @s Pos[2]


####if ubsdebrishandling is located on an air or water block, kill it.
#execute as @e[tag=cddebrishandling] at @s if block ~ ~ ~ minecraft:air run kill @s
#execute as @e[tag=cddebrishandling] at @s if block ~ ~ ~ minecraft:water run kill @s
#execute as @e[tag=cddebrishandling] at @s if block ~ ~ ~ minecraft:lava run kill @s

##kill new visual if original debris was killed
execute unless entity @e[tag=ubsdebrishandling] run kill @e[tag=cdnewdebrisvis]

##if the debris still exists, copy the block it is of to ubszone
execute if entity @e[tag=ubsdebrishandling] run function pack:universalblockdatastorage/UBSstoreblock

##remove tags
tag @e[tag=ubsdebrishandling] remove queued
tag @e remove ubsdebrishandling
tag @e remove ubsnewdebrisvis
###finally, if there is any other queued debris item, re-execute the function
execute if entity @e[type=armor_stand,tag=ubsdebrispos,tag=queued] run execute as @e[tag=ubszone] at @s run function pack:universalblockdatastorage/addqueddebris