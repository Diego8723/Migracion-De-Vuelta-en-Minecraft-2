####scoreboards
tag @s add mandomuser
scoreboard players set @s mandomuser 1
scoreboard players set @s silenced 0
scoreboard players set @s standsummoned 0
scoreboard players set @s idle 1
scoreboard players set @s timerewindindex 0
scoreboard players set @s timerewindstage 0
scoreboard players set @s mandomtimer 0
scoreboard players set @s mandomitemstate 0
#timer stores time since mandom used ability
scoreboard players set @s mandomabilityusetimer 0
tag @s add mandomnorevolver
#####give items
function pack:mandomfunctions/giveitems

scoreboard players set @s standindex 10