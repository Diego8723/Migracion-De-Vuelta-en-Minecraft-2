#####This function is ran once upon reloading and is used to set up mandom's zone, which is above Crazy Diamond's

##create armor stand marker
kill @e[tag=mandomstoreinventory]
execute unless entity @e[tag=mandomstoreinventory] run summon armor_stand 5000000 229 176 {Marker:1b,Tags:["mandomstoreinventory"]}
scoreboard players set @e[tag=mandomstoreinventory,scores={cdchunkx=..5000000}] cdchunkx 5000000
scoreboard players set @e[tag=mandomstoreinventory,scores={cdchunky=..-63}] cdchunky -63
scoreboard players set @e[tag=mandomstoreinventory,scores={cdchunkz=..192}] cdchunkz 192
##create stone floor
fill 5000031 231 223 4999984 231 176 stone