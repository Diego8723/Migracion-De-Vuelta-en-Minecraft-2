####this function is executed one at a time by the cloned entities stored in Mandom's zone. 
####It checks to see if any 
tag @s add dupobjhandling
##see if object still exists
#if object, copy data then kill
execute at @s run execute as @e[tag=!mandompos,distance=1..] run execute if score @s timerewindindex = @e[tag=dupobjhandling,limit=1] timerewindindex run tag @s add mandomoriginal

execute if entity @e[tag=dupobjhandling,type=armor_stand] run data modify entity @e[tag=mandomoriginal,limit=1] ArmorItems set from entity @e[tag=dupobjhandling,limit=1] ArmorItems
execute if entity @e[tag=dupobjhandling,type=item] run data modify entity @e[tag=mandomoriginal,limit=1] Item set from entity @e[tag=dupobjhandling,limit=1] Item
execute if entity @e[tag=dupobjhandling,type=chest_boat] run data modify entity @e[tag=mandomoriginal,limit=1] Items set from entity @e[tag=dupobjhandling,limit=1] Items
execute if entity @e[tag=dupobjhandling,type=chest_minecart] run data modify entity @e[tag=mandomoriginal,limit=1] Items set from entity @e[tag=dupobjhandling,limit=1] Items
execute if entity @e[tag=dupobjhandling,type=llama] run data modify entity @e[tag=mandomoriginal,limit=1] Items set from entity @e[tag=dupobjhandling,limit=1] Items
execute if entity @e[tag=dupobjhandling,type=donkey] run data modify entity @e[tag=mandomoriginal,limit=1] Items set from entity @e[tag=dupobjhandling,limit=1] Items
execute if entity @e[tag=dupobjhandling,type=mule] run data modify entity @e[tag=mandomoriginal,limit=1] Items set from entity @e[tag=dupobjhandling,limit=1] Items

execute if entity @e[tag=mandomoriginal] run tp ~ -200 ~
execute if entity @e[tag=mandomoriginal] run kill @e[tag=dupobjhandling]
#if no object,move
execute as @e[tag=mandompos] at @s if score @s timerewindindex = @e[tag=dupobjhandling,limit=1] timerewindindex run teleport @e[tag=dupobjhandling] ~ ~ ~


###remove tags
tag @s remove dupobjnothandled
tag @e remove dupobjhandling
tag @e remove mandomoriginal
###re-execute
execute as @e[tag=dupobjnothandled,limit=1,sort=random] run function pack:mandomfunctions/mandomdatastorage/returnmissingentities