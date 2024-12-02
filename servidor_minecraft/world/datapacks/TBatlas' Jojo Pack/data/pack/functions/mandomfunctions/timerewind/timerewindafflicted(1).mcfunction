####This function is executed once per tick by every entity that has been returned to zero.
###Like other similar functions, it is single-threaded, and each entity will be handled one at a time
#add handling tag
tag @s add mandomhandling

####returning players to their armor stands
execute as @e[tag=mandompos] at @s if score @s timerewindindex = @e[tag=mandomhandling,limit=1] timerewindindex run tag @s add mandomposhandling
execute as @e[tag=mandomposhandling] at @s run teleport @e[tag=mandomhandling,limit=1] ~ ~ ~ facing ^ ^ ^5
###give mandom tags
execute as @e[tag=mandomtgt] run tag @s add mandomd

###if mandomhandling is a player, get stored inventory data, etc
execute as @s[type=player] if entity @a[tag=mandomuser,scores={mandomtimer=1}] run function pack:mandomfunctions/mandomdatastorage/timerewindplayerinfo

###if mandomhandling is a living entity, get health, etc.
execute as @s[type=!player,type=!#pack:not_alive] if entity @a[tag=mandomuser,scores={mandomtimer=1}] run execute store result entity @s Health float 1 run scoreboard players get @s mandomstoredhp

###remove mandom tags
execute as @e[tag=mandomtgt] if entity @a[tag=mandomuser,scores={mandomtimer=2..}] run tag @s remove mandomtgt
execute as @e[tag=mandomtgt] if entity @a[tag=mandomuser,scores={mandomtimer=2..}] run tag @s remove mandomd
#give effects
effect give @s minecraft:resistance 1 4 true

#remove tags
tag @s remove mandomhandling
tag @e remove mandomposhandling
tag @s remove mandomnothandled
#re-execute
execute as @e[tag=mandomnothandled,limit=1,sort=random] run function pack:mandomfunctions/timerewind/timerewindafflicted
