###check offhand for bullets
#check to see if there are nuggets to reload
scoreboard players set @s successfulreload 0
execute store result score @s successfulreload run clear @s minecraft:iron_nugget{CustomModelData:300000} 6
#do various things depending on scores

###give bullets in offhand tag
playsound minecraft:revolver.reload player @a
##5 bullet
execute if entity @s[scores={successfulreload=5}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:5s} 1
execute if entity @s[scores={successfulreload=5}] run item replace entity @s weapon.offhand with air
##4 bullet
execute if entity @s[scores={successfulreload=4}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:4s} 1
execute if entity @s[scores={successfulreload=4}] run item replace entity @s weapon.offhand with air
##3 bullet
execute if entity @s[scores={successfulreload=3}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:3s} 1
execute if entity @s[scores={successfulreload=3}] run item replace entity @s weapon.offhand with air
##2 bulle
execute if entity @s[scores={successfulreload=2}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:2s} 1
execute if entity @s[scores={successfulreload=2}] run item replace entity @s weapon.offhand with air
##1 bullet
execute if entity @s[scores={successfulreload=1}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:1s} 1
execute if entity @s[scores={successfulreload=1}] run item replace entity @s weapon.offhand with air
##6>
execute if entity @s[scores={successfulreload=6}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Revolver","color":"gray","bold":true,"italic":true,"underlined":true}'},CustomModelData:302021,mandomrevolver:1b,tbatlaspackkillitem:1b,ac:6s} 1