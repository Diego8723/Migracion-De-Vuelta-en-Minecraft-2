#####This function clones entities that are not alive, such as items, chest minecarts, etc.
##executed by mandomqueuedhandling
###first, create new entity

execute if entity @s[type=armor_stand] run summon armor_stand ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=boat] run summon boat ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=chest_boat] run summon chest_boat ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=minecart] run summon minecart ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=chest_minecart] run summon chest_minecart ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=furnace_minecart] run summon furnace_minecart ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=spawner_minecart] run summon spawner_minecart ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=area_effect_cloud] run summon area_effect_cloud ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=glow_item_frame] run summon glow_item_frame ~ ~50 ~ {Item:{id:"minecraft:egg",Count:1b},Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=item] run summon item ~ ~20 ~ {Item:{id:"minecraft:egg",Count:1b},Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=item_frame] run summon item_frame ~ ~50 ~ {Item:{id:"minecraft:egg",Count:1b},Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=painting] run summon painting ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}
execute if entity @s[type=trident] run summon trident ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"]}

#animals with inventory
execute if entity @s[type=donkey,nbt={ChestedHorse:1b}] run summon donkey ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"],ChestedHorse:1b,Items:[{Slot:2b,id:"minecraft:iron_nugget",Count:1b}]}
execute if entity @s[type=llama,nbt={ChestedHorse:1b}] run summon llama ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"],ChestedHorse:1b,Items:[{Slot:2b,id:"minecraft:iron_nugget",Count:1b}]}
execute if entity @s[type=mule,nbt={ChestedHorse:1b}] run summon llama ~ ~50 ~ {Tags:["newdupobj","dupobj","existbeforetimerewind"],ChestedHorse:1b,Items:[{Slot:2b,id:"minecraft:iron_nugget",Count:1b}]}

###second, copy data
execute if entity @e[tag=newdupobj,type=armor_stand] run data modify entity @e[tag=newdupobj,limit=1] ArmorItems set from entity @s ArmorItems
execute if entity @e[tag=newdupobj,type=item] run data modify entity @e[tag=newdupobj,limit=1] Item set from entity @s Item
execute if entity @e[tag=newdupobj,type=chest_boat] run data modify entity @e[tag=newdupobj,limit=1] Items set from entity @s Items
execute if entity @e[tag=newdupobj,type=chest_minecart] run data modify entity @e[tag=newdupobj,limit=1] Items set from entity @s Items
execute if entity @s[type=donkey] run data modify entity @e[tag=newdupobj,limit=1] Items set from entity @s Items
execute if entity @s[type=llama] run data modify entity @e[tag=newdupobj,limit=1] Items set from entity @s Items
execute if entity @s[type=mule] run data modify entity @e[tag=newdupobj,limit=1] Items set from entity @s Items
###third, copy score
execute store result score @e[tag=newdupobj,limit=1] timerewindindex run scoreboard players get @s timerewindindex
###fourth, move entity to zone
teleport @e[tag=newdupobj] @e[tag=mandomzonecenter,limit=1]

#fifth, remove tag
tag @e remove newdupobj