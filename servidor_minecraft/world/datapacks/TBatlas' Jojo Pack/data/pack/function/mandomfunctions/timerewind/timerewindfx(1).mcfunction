####mandom fx and stuff executed by user every tick
execute if entity @s[scores={timerewindstage=2,mandomtimer=0}] run execute as @a[tag=mandomtgt] at @s run particle dust_color_transition 1.000 0.000 0.000 4 0.380 0.000 0.000 ~ ~1 ~ 1 1 1 20 50 force
execute if entity @s[scores={timerewindstage=2,mandomtimer=0}] run execute as @a[tag=mandomtgt] at @s run particle minecraft:explosion ~ ~1.5 ~ 0 0 0 .5 20 force
execute if entity @s[scores={timerewindstage=2,mandomtimer=0}] run time add 7.99d
execute as @a[scores={timerewindstage=2,mandomtimer=0}] at @s run playsound mandom ambient @a
execute as @a[scores={timerewindstage=2,mandomtimer=0}] at @s run scoreboard players set @s mandomabilityusetimer 0
####kill entities that did not exist before time rewind
execute if entity @s[scores={timerewindstage=2,mandomtimer=0}] at @s run execute as @e[tag=!existbeforetimerewind,distance=..30,tag=!mandompos] at @s unless entity @s[scores={act=4}] run tp ~ ~-300 ~
execute if entity @s[scores={timerewindstage=2,mandomtimer=0}] at @s run execute as @e[tag=!existbeforetimerewind,distance=..30,tag=!mandompos] at @s unless entity @s[scores={act=4}] run kill @s
execute if entity @s[scores={mandomtimer=1..}] run tag @e remove existbeforetimerewind
####execute stuff after end of time rewind
execute as @a[scores={timerewindstage=2}] run scoreboard players add @s mandomtimer 1
##replace terrain
execute if entity @s[scores={mandomtimer=1,mandomitemstate=0}] at @e[tag=mandomuserpos] run clone from minecraft:overworld 4999990 234 183 5000030 254 223 ~-20 ~-15 ~-20

##fix player max health
execute as @a[tag=mandomfixmaxhp] if entity @a[tag=mandomuser,scores={mandomtimer=4}] run function pack:mandomfunctions/mandomdatastorage/resetplayermaxhealth
##return entities killed during time 
execute if entity @a[tag=mandomuser,scores={mandomtimer=2}] run tag @e[tag=dupobj] add dupobjnothandled
execute as @e[tag=dupobjnothandled,limit=1,sort=random] if entity @a[tag=mandomuser,scores={mandomtimer=2}] at @s run function pack:mandomfunctions/mandomdatastorage/returnmissingentities
##end time rewind
scoreboard players set @a[tag=mandomuser,limit=1,scores={mandomtimer=30..,timerewindstage=2}] timerewindstage 0
execute if entity @s[scores={mandomtimer=2..}] run kill @e[tag=mandompos]
scoreboard players set @a[tag=mandomuser,limit=1,scores={mandomtimer=30..}] mandomtimer 0

###kill armor stands
execute as @e[tag=mandompos] if entity @a[tag=mandomuser,scores={mandomtimer=2..}] run kill @s