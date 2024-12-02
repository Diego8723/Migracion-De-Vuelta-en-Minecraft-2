####Functions relating to the mandom item itself, usually silencing
##actuate mandomitemstate
scoreboard players add @s mandomitemstate 1
execute if entity @s[scores={mandomitemstate=3..}] run scoreboard players set @s mandomitemstate 0

####if item state is 2, stand is silenced
execute if entity @s[scores={mandomitemstate=2}] run scoreboard players set @s silenced 1
execute if entity @s[scores={silenced=1}] run title @s actionbar {"text":"Stand Silenced","color":"red"}
execute if entity @s[scores={silenced=1}] run clear @s minecraft:carrot_on_a_stick{tbatlaspackkillitem:1b}
execute if entity @s[scores={silenced=1}] run clear @s minecraft:carrot_on_a_stick{standitem:1b}

####if item state is 1, terrain is not changed
execute if entity @s[scores={mandomitemstate=1}] run title @s actionbar {"text":"Terrain Rewind Disabled","color":"red"}
####if item state is 0, terrain can be damaged
execute if entity @s[scores={mandomitemstate=0}] run function pack:mandomfunctions/giveitems
execute if entity @s[scores={mandomitemstate=0}] run scoreboard players set @s silenced 0
execute if entity @s[scores={mandomitemstate=0}] run title @s actionbar {"text":"Terrain Rewind Enabled","color":"green"}