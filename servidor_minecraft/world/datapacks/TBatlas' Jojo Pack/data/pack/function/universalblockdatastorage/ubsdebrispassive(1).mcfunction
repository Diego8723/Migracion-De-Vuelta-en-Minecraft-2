############Functions executed by every piece of debris (debrispos)

#Every time this function is run, we give the executing ubsdebrispos a special tag
tag @s add ubsvismove
#if this is the correct block, teleport it to the mover
execute as @e[tag=ubsdebrisvis] at @e[tag=ubsvismove,limit=1] if score @s ubsdebrisindex = @e[tag=ubsvismove,limit=1] ubsdebrisindex at @e[tag=ubsvismove] run teleport @s ~-.5 ~ ~-.5
tag @s remove unmoved
##remove cdvismove tag
tag @e remove ubsvismove

##do damage if moving
execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] positioned ~ ~-.6 ~ run damage @e[distance=.1..1.2,sort=random,limit=1,type=!#pack:not_alive] 10 minecraft:falling_block

##re-execute the function if there are still un-moved blocks
execute as @e[tag=ubsdebrispos,tag=unmoved,sort=random,limit=1] at @s run function pack:universalblockdatastorage/ubsdebrispassive