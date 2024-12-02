####this function is activated to cancel the effects of an aborted time rewind

###remove tags
tag @e remove mandomtgt
tag @e remove mandomd


###kill entities
kill @e[tag=mandompos]
teleport @e[tag=dupobj] ~ -200 ~
kill @e[tag=dupobj]

##reset mandom ability
scoreboard players set @s timerewindstage 0
scoreboard players set @s mandomabilityusetimer 0
scoreboard players set @s mandomtimer 0