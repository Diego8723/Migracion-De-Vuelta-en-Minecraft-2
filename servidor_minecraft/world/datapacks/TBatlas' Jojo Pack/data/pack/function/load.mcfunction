#######Copy and paste all reload functions into this function
###Stand index creation
scoreboard objectives add standindex dummy
execute as @a unless entity @s[scores={standindex=0..}] run scoreboard players set @s standindex 0

####death counter
scoreboard objectives add playerdeath deathCount
####item use scoreboard (itemuse)
scoreboard objectives add itemuse minecraft.used:minecraft.carrot_on_a_stick
###fall distance
scoreboard objectives add falldistance dummy
####item use for warped fungus on a stick (itemuse2)
scoreboard objectives add itemuse2 minecraft.used:minecraft.warped_fungus_on_a_stick
####world time
scoreboard objectives add worldtime dummy
scoreboard objectives add worldtime2 dummy
scoreboard objectives add dworldtime dummy
scoreboard objectives add 56 dummy
scoreboard objectives add 10 dummy
scoreboard objectives add 8 dummy
scoreboard players set .global 56 56
scoreboard players set .global 10 10
scoreboard players set .global 8 8
#time of day (ticks)
scoreboard objectives add daytime dummy
###fire check
scoreboard objectives add firetime dummy
###calibrating moon timer
scoreboard objectives add mtc dummy
execute unless score .global mtc matches 1 run time set night
execute unless score .global mtc matches 1 run scoreboard players set .global mtc 1
##pucci made green baby
scoreboard objectives add pmgb dummy
##reading bible dummy
scoreboard objectives add pucciinteract dummy

##scoreboard for tracking # of stands
scoreboard objectives add standcounttotal dummy
execute unless score .global standcounttotal >= .global zero run scoreboard players set .global standusertotal 0

#####Tusk load function
scoreboard objectives add tuskuser dummy
scoreboard objectives add standsummoned dummy
scoreboard objectives add act dummy
scoreboard objectives add idle dummy
scoreboard objectives add maxact dummy
scoreboard objectives add nailtimer dummy
scoreboard objectives add nailfired minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add horsetimer dummy
scoreboard players set @a[tag=!tuskuser] horsetimer 0
scoreboard objectives add tuskanim dummy
scoreboard objectives add health dummy
scoreboard objectives add spin dummy
scoreboard players set @e spin 0
scoreboard objectives add milmk minecraft.used:minecraft.milk_bucket
scoreboard objectives add jesustimer dummy
scoreboard players set @a jesustimer 0
scoreboard objectives add xp dummy
scoreboard objectives add holetimer dummy
scoreboard objectives add infspindex dummy
execute unless score .global infspindex >= .global zero run scoreboard players set .global infspindex 0
#######ge load function
function pack:gefunctions/gepackstartup
######WOU load
function pack:woufunctions/twoustartup
#####SC load
function pack:scfunctions/load
######D4C load
function pack:d4cfunctions/load
######whitesnake load
function pack:wsfunctions/load
#####cmoon load
function pack:cmoonfunctions/load
#####mih load
function pack:mihfunctions/load
#####cd load
function pack:crazydiamondfunctions/load
#####mandom load
function pack:mandomfunctions/load


#####give people stand indexes if they are updating
scoreboard players set @a[tag=tuskuser] standindex 1
scoreboard players set @a[tag=geuser] standindex 2
scoreboard players set @a[tag=twouuser] standindex 3
scoreboard players set @a[tag=scuser] standindex 4
scoreboard players set @a[scores={dfourcuser=1}] standindex 5

######36 sinners
scoreboard objectives add 36sinners dummy

######block data storage for ALL future stands
function pack:universalblockdatastorage/createubszone

###reloading revolver bullets
scoreboard objectives add successfulreload dummy