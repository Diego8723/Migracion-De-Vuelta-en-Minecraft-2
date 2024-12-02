#######setup- add a "mandomqueued" tag to every entity in a specific radius
#tag used for this function
tag @s add mandomqueuedhandling
#tag used for identifying entities that will be returned to zero
tag @s add mandomtgt

#create armor stand
execute as @e[tag=mandomqueuedhandling] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mandompos","mandomposnew"],DisabledSlots:63}

#orient armor stand properly
execute as @e[tag=mandomposnew] at @s rotated as @e[tag=mandomqueuedhandling,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^20

#particles
execute as @e[tag=mandomqueuedhandling] at @s run particle minecraft:happy_villager ~ ~2.2 ~ 0 0 0 1 1 force @a[tag=mandomuser]

#add index to mandomd entity and armor stand
execute store result score @s timerewindindex run scoreboard players get .global timerewindindex
execute store result score @e[tag=mandomposnew,limit=1] timerewindindex run scoreboard players get .global timerewindindex
#clone item, etc.
execute if entity @s[type=#pack:not_alive] at @s run function pack:mandomfunctions/mandomdatastorage/cloneentity
execute as @s[type=donkey] at @s run function pack:mandomfunctions/mandomdatastorage/cloneentity
execute as @s[type=llama] at @s run function pack:mandomfunctions/mandomdatastorage/cloneentity
execute as @s[type=mule] at @s run function pack:mandomfunctions/mandomdatastorage/cloneentity

#actuate index scoreboard
scoreboard players add .global timerewindindex 1

#add special tag if armor stand belongs to mandom user
execute if entity @a[tag=mandomqueuedhandling,tag=mandomuser] run tag @e[tag=mandomposnew] add mandomuserpos

#if the armor stand is storing the data of a player, create chests and stuff
execute if entity @a[tag=mandomqueuedhandling] as @e[tag=mandomstoreinventory] at @s run function pack:mandomfunctions/mandomdatastorage/copyplayerinventory

#store health and max health
execute store result score @s mandomstoredmaxhp run attribute @s minecraft:generic.max_health get
execute store result score @s mandomstoredhp run data get entity @s Health



#remove tags
tag @s remove mandomqueuedhandling
tag @e remove mandomposnew
tag @s remove mandomqueued
#execute as exactly one other queued entity
execute as @e[tag=mandomqueued,limit=1,sort=random] run function pack:mandomfunctions/timerewind/mandomaddqueuedentity