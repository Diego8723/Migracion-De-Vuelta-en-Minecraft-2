####scoreboard create
scoreboard objectives add mandomuser dummy
scoreboard objectives add silenced dummy
scoreboard objectives add mandomitemstate dummy
scoreboard objectives add standsummoned dummy
scoreboard objectives add idle dummy
##scoreboard used to create markers that teleport entities back to them after time rewind
scoreboard objectives add timerewindindex dummy
scoreboard objectives add timerewindstage dummy
scoreboard objectives add mandomtimer dummy
scoreboard objectives add mandomabilityusetimer dummy

scoreboard objectives add mandomstoredmaxhp dummy
scoreboard objectives add mandomstoredhp dummy

############All above scoreboards/teams have been accounted for in the Removestand function


##create mandomzone
gamerule commandModificationBlockLimit 60000
function pack:mandomfunctions/mandomdatastorage/createmandomzone
execute unless entity @e[tag=mandomzonecenter] run summon armor_stand 5000010.5 249 203.51 {Marker:1b,Tags:["mandomzonecenter"]}