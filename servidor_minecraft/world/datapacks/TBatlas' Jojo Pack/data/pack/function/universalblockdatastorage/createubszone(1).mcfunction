#####This function creates an area in the game world where terrain 'destroyed' by crazy diamond will be cloned to
###at the zone, force load the chunks.
forceload add -5000000 1999993 -4999962 2000022
###first, create zone object
execute unless entity @e[tag=ubszone] run fill -4999999 -60 1999984 -4999968 -60 2000022 minecraft:barrier
execute unless entity @e[tag=ubszone] run summon armor_stand -4999999 -60 1999983 {Marker:1b,Tags:["ubszone"]}
###create scoreboards used by destroyed terrain
##these variables are the stored location of where a terrain piece was destroyed
scoreboard objectives add ubsstoredx dummy
scoreboard objectives add ubsstoredy dummy
scoreboard objectives add ubsstoredz dummy
##These variables store the location in the crazy diamond chunk where a given piece copied itself to.
scoreboard objectives add ubschunkx dummy
scoreboard objectives add ubschunky dummy
scoreboard objectives add ubschunkz dummy
##give initial chunk coords to zone object.
scoreboard players set @e[tag=ubszone,scores={ubschunkx=..5000000}] ubschunkx -4999999
scoreboard players set @e[tag=ubszone,scores={ubschunkx=..-63}] ubschunky -63
scoreboard players set @e[tag=ubszone,scores={ubschunkx=..1999984}] ubschunkz 1999984

###create scoreboard to track index of each debris piece. Every piece of debris will have a second entity that will appear as
###the block itself.
scoreboard objectives add ubsdebrisindex dummy
scoreboard players set @e[tag=ubszone,scores={ubsdebrisindex=..0}] ubsdebrisindex 0