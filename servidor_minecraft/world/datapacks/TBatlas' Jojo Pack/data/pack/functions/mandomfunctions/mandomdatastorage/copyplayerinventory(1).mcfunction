###This function is executed by "mandomstoreinventory" and copies the player's items into the chest
##player having info copied has the tag "mandomqueuedhandling"
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air
fill ~ ~-1 ~ ~ ~1 ~ minecraft:chest
#copy inventory data
item replace block ~ ~ ~ container.0 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.0
item replace block ~ ~ ~ container.1 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.1
item replace block ~ ~ ~ container.2 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.2
item replace block ~ ~ ~ container.3 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.3
item replace block ~ ~ ~ container.4 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.4
item replace block ~ ~ ~ container.5 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.5
item replace block ~ ~ ~ container.6 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.6
item replace block ~ ~ ~ container.7 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.7
item replace block ~ ~ ~ container.8 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.8
item replace block ~ ~ ~ container.9 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.9
item replace block ~ ~ ~ container.10 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.10
item replace block ~ ~ ~ container.11 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.11
item replace block ~ ~ ~ container.12 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.12
item replace block ~ ~ ~ container.13 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.13
item replace block ~ ~ ~ container.14 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.14
item replace block ~ ~ ~ container.15 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.15
item replace block ~ ~ ~ container.16 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.16
item replace block ~ ~ ~ container.17 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.17
item replace block ~ ~ ~ container.18 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.18
item replace block ~ ~ ~ container.19 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.19
item replace block ~ ~ ~ container.20 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.20
item replace block ~ ~ ~ container.21 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.21
item replace block ~ ~ ~ container.22 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.22
item replace block ~ ~ ~ container.23 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.23
item replace block ~ ~ ~ container.24 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.24
item replace block ~ ~ ~ container.25 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.25
item replace block ~ ~ ~ container.26 from entity @a[tag=mandomqueuedhandling,limit=1] inventory.26

#copy ender chest
item replace block ~ ~-1 ~ container.0 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.0
item replace block ~ ~-1 ~ container.1 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.1
item replace block ~ ~-1 ~ container.2 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.2
item replace block ~ ~-1 ~ container.3 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.3
item replace block ~ ~-1 ~ container.4 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.4
item replace block ~ ~-1 ~ container.5 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.5
item replace block ~ ~-1 ~ container.6 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.6
item replace block ~ ~-1 ~ container.7 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.7
item replace block ~ ~-1 ~ container.8 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.8
item replace block ~ ~-1 ~ container.9 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.9
item replace block ~ ~-1 ~ container.10 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.10
item replace block ~ ~-1 ~ container.11 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.11
item replace block ~ ~-1 ~ container.12 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.12
item replace block ~ ~-1 ~ container.13 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.13
item replace block ~ ~-1 ~ container.14 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.14
item replace block ~ ~-1 ~ container.15 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.15
item replace block ~ ~-1 ~ container.16 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.16
item replace block ~ ~-1 ~ container.17 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.17
item replace block ~ ~-1 ~ container.18 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.18
item replace block ~ ~-1 ~ container.19 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.19
item replace block ~ ~-1 ~ container.20 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.20
item replace block ~ ~-1 ~ container.21 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.21
item replace block ~ ~-1 ~ container.22 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.22
item replace block ~ ~-1 ~ container.23 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.23
item replace block ~ ~-1 ~ container.24 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.24
item replace block ~ ~-1 ~ container.25 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.25
item replace block ~ ~-1 ~ container.26 from entity @a[tag=mandomqueuedhandling,limit=1] enderchest.26

#copy armor then offhand
item replace block ~ ~1 ~ container.0 from entity @a[tag=mandomqueuedhandling,limit=1] armor.head
item replace block ~ ~1 ~ container.1 from entity @a[tag=mandomqueuedhandling,limit=1] armor.chest
item replace block ~ ~1 ~ container.2 from entity @a[tag=mandomqueuedhandling,limit=1] armor.legs
item replace block ~ ~1 ~ container.3 from entity @a[tag=mandomqueuedhandling,limit=1] armor.feet
item replace block ~ ~1 ~ container.4 from entity @a[tag=mandomqueuedhandling,limit=1] weapon.offhand
#copy hotbar data
#copy hotbar
item replace block ~ ~1 ~ container.5 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.0
item replace block ~ ~1 ~ container.6 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.1
item replace block ~ ~1 ~ container.7 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.2
item replace block ~ ~1 ~ container.8 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.3
item replace block ~ ~1 ~ container.9 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.4
item replace block ~ ~1 ~ container.10 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.5
item replace block ~ ~1 ~ container.11 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.6
item replace block ~ ~1 ~ container.12 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.7
item replace block ~ ~1 ~ container.13 from entity @a[tag=mandomqueuedhandling,limit=1] hotbar.8
#store current location of data in armor stand
execute store result score @e[tag=mandomposnew] cdchunkx run scoreboard players get @e[tag=mandomstoreinventory,limit=1] xx
execute store result score @e[tag=mandomposnew] cdchunky run scoreboard players get @e[tag=mandomstoreinventory,limit=1] yy
execute store result score @e[tag=mandomposnew] cdchunkz run scoreboard players get @e[tag=mandomstoreinventory,limit=1] zz
#actuate mandom zone
function pack:mandomfunctions/mandomdatastorage/actuatemandomzone