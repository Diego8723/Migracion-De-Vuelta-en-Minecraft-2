#####summon stand
execute if entity @s[scores={mandomuser=1,standsummoned=0,silenced=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{standitem:1b}}]}] at @s run playsound minecraft:standsummon ambient @a ~ ~ ~ 1
execute if entity @s[scores={mandomuser=1,standsummoned=0,silenced=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{standitem:1b}}]}] run scoreboard players set @s standsummoned 1

#####unsummon stand
execute if entity @s[scores={mandomuser=1,standsummoned=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{standitem:1b}}]}] run scoreboard players set @s standsummoned 0

####stand idle
execute if entity @s[scores={standsummoned=1}] at @s run function pack:mandomfunctions/standidle
###using Mandom's revolver
#######gun
execute as @s[scores={itemuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021}}}] at @s anchored eyes run function pack:mandomfunctions/gun
execute as @s[scores={itemuse=1..,dreloadtimer=30},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302022}}}] at @s run function pack:mandomfunctions/gunr
execute at @e[tag=mandombullet] run particle dust 1.000 0.831 0.161 1 ~ ~ ~ 0 0 0 1 1 force
###ammo hit
execute as @e[tag=d4bulletn] at @s unless predicate pack:is_riding_snowball run function pack:mandomfunctions/bullethit
execute as @e[tag=d4bullet] run scoreboard players add @s dbullettimer 1
execute as @e[tag=d4bullet,scores={dbullettimer=40..}] run kill @s

#####Rewinding Time
####add queued time rewind
execute as @e[tag=mandomqueued,limit=1,sort=random] run function pack:mandomfunctions/timerewind/mandomaddqueuedentity
####rewinding upon use of rewind time item
execute as @a[scores={timerewindstage=2,mandomtimer=0..4}] at @s run function pack:mandomfunctions/timerewind/timerewindexe
execute at @s run function pack:mandomfunctions/timerewind/timerewindfx
##timer that cancels ability if user waits too long
execute if entity @s[scores={timerewindstage=1}] run scoreboard players add @s mandomabilityusetimer 1
execute if entity @s[scores={mandomabilityusetimer=200..}] run function pack:mandomfunctions/timerewind/timerewindcancel
###########Silencing
####un-silence stand if user dies
execute as @a[scores={playerdeath=1}] run scoreboard players set @s silenced 1
###automatically replace stand item if user is silenced
execute as @a[scores={silenced=1,standindex=10}] run execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{standitem:1b}}]}] run give @s carrot_on_a_stick{display:{Name:'{"text":"Mandom","color":"dark_red","bold":true,"italic":true,"underlined":true}'},CustomModelData:302017,standitem:1b,tbatlaspackkillitem:1b} 1
###All functions involving changing silenced state
execute if entity @s[scores={mandomuser=1,itemuse=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{standitem:1b}}}] run function pack:mandomfunctions/standitemfunctions