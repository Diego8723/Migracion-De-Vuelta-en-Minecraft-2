###summon aim
summon armor_stand ^ ^ ^50 {glowing:1b,Invulnerable:1b,Invisible:1b,Tags:["revolveraim"]}

##change gun tag
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:1s}}}] run scoreboard players set @s dreloadtimer 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:1s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302022,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:0s} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:2s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:1s} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:3s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:2s} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:4s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:3s} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:5s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:4s} 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302021,ac:6s}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:5s} 1

###execute if user is crouching
execute if predicate pack:is_crouching run summon armor_stand ^ ^ ^2.4 {Invisible:1b,Marker:1b,Tags:["bulletn"]}
execute if predicate pack:is_crouching run execute as @e[tag=bulletn] at @s run scoreboard players set @s wouraytracerecursion 0
execute if predicate pack:is_crouching run execute as @e[tag=bulletn] at @s run function pack:mandomfunctions/mandomprojectileraytrace


###summon bullet
execute unless predicate pack:is_crouching run summon snowball ^ ^ ^2.4 {Tags:["d4bullet","mandombullet","bulletn"],Motion:[0.0,0.0,0.0],Item:{id:"minecraft:polished_blackstone_button",Count:1b},Passengers:[{id:"minecraft:armor_stand",Team:"clones",Invisible:1b,Tags:["d4bulletn"]}]}


execute as @e[sort=nearest,limit=1,tag=bulletn] at @s run scoreboard players set @s dbullettimer 0
execute as @e[sort=nearest,limit=1,tag=bulletn] at @s run teleport @s ~ ~ ~ facing entity @e[tag=revolveraim,limit=1,sort=nearest]

playsound minecraft:item.totem.use ambient @s ~ ~ ~ .7 2
playsound minecraft:block.iron_door.open ambient @s ~ ~ ~ 1 .2
##give bullet n things scores
execute as @e store result score @s xx run data get entity @s Pos[0] 1
execute as @e store result score @s yy run data get entity @s Pos[1] 1
execute as @e store result score @s zz run data get entity @s Pos[2] 1

##bullet motion
execute as @e[sort=nearest,limit=1,tag=bulletn] at @s store result entity @s Motion[0] double .1 run scoreboard players operation @e[limit=1,sort=nearest,tag=revolveraim] xx -= @s xx
execute as @e[sort=nearest,limit=1,tag=bulletn] at @s store result entity @s Motion[1] double .1 run scoreboard players operation @e[limit=1,sort=nearest,tag=revolveraim] yy -= @s yy
execute as @e[sort=nearest,limit=1,tag=bulletn] at @s store result entity @s Motion[2] double .1 run scoreboard players operation @e[limit=1,sort=nearest,tag=revolveraim] zz -= @s zz
##remove new tag
execute as @e[tag=bulletn] run tag @s remove bulletn

execute as @e[tag=revolveraim] run kill @s

###give revolver command (stored)
#/give @p carrot_on_a_stick{display:{Name:'{"text":"revolver"}'},CustomModelData:302022,ac:6s} 1