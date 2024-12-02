#this function is executed the moment the mandom user begins to rewind time

####add tag to all entities marking them as existing before mandom reset
tag @e add existbeforetimerewind

#######setup- add a "mandomqueued" tag to every entity in a specific radius
execute as @e[distance=..20,type=!item_frame,type=!glow_item_frame] run tag @s add mandomqueued
scoreboard players set @s timerewindstage 1

######clone surrounding terrain
execute if entity @s[scores={mandomitemstate=0}] run clone ~-20 ~-15 ~-20 ~20 ~15 ~20 to minecraft:overworld 4999990 234 183 replace