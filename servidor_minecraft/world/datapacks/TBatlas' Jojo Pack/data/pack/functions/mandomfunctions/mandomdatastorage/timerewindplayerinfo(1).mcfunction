###returns data to players from before they were rewound
##function is executed by the player
#player has tag mandomhandling
#position has tag mandomposhandling


##return items from chest
#first create an armor stand that will go to the position of this player's stored data
summon armor_stand 5000000 192 200 {Marker:1b,Tags:["mandomreturninventory"]}

#set armor stand's position to be that of the player's stored info
execute store result entity @e[tag=mandomreturninventory,limit=1] Pos[0] double 1 run scoreboard players get @e[tag=mandomposhandling,limit=1] cdchunkx
execute store result entity @e[tag=mandomreturninventory,limit=1] Pos[1] double 1 run scoreboard players get @e[tag=mandomposhandling,limit=1] cdchunky
execute store result entity @e[tag=mandomreturninventory,limit=1] Pos[2] double 1 run scoreboard players get @e[tag=mandomposhandling,limit=1] cdchunkz
#now copy items to afflicted player's inventory
execute as @e[tag=mandomreturninventory] at @s run function pack:mandomfunctions/mandomdatastorage/copychesttoplayer

execute as @e[tag=mandomreturninventory] run scoreboard players list @s
##kill armor stand
kill @e[tag=mandomreturninventory]

#set max health to stored hp
function pack:mandomfunctions/mandomdatastorage/resetplayerhealth