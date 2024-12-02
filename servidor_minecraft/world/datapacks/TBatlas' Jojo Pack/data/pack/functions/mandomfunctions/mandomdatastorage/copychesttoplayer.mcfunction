###This function is executed by "mandomreturninventory" and copies the player's items into the chest
#####returns data to players from before they were rewound
##function is executed by the player
#player has tag mandomhandling
#position has tag mandomposhandling

#####copy inventory data from lower chest
item replace entity @a[tag=mandomhandling,limit=1] inventory.0 from block ~ ~ ~ container.0
item replace entity @a[tag=mandomhandling,limit=1] inventory.1 from block ~ ~ ~ container.1
item replace entity @a[tag=mandomhandling,limit=1] inventory.2 from block ~ ~ ~ container.2
item replace entity @a[tag=mandomhandling,limit=1] inventory.3 from block ~ ~ ~ container.3
item replace entity @a[tag=mandomhandling,limit=1] inventory.4 from block ~ ~ ~ container.4
item replace entity @a[tag=mandomhandling,limit=1] inventory.5 from block ~ ~ ~ container.5
item replace entity @a[tag=mandomhandling,limit=1] inventory.6 from block ~ ~ ~ container.6
item replace entity @a[tag=mandomhandling,limit=1] inventory.7 from block ~ ~ ~ container.7
item replace entity @a[tag=mandomhandling,limit=1] inventory.8 from block ~ ~ ~ container.8
item replace entity @a[tag=mandomhandling,limit=1] inventory.9 from block ~ ~ ~ container.9
item replace entity @a[tag=mandomhandling,limit=1] inventory.10 from block ~ ~ ~ container.10
item replace entity @a[tag=mandomhandling,limit=1] inventory.11 from block ~ ~ ~ container.11
item replace entity @a[tag=mandomhandling,limit=1] inventory.12 from block ~ ~ ~ container.12
item replace entity @a[tag=mandomhandling,limit=1] inventory.13 from block ~ ~ ~ container.13
item replace entity @a[tag=mandomhandling,limit=1] inventory.14 from block ~ ~ ~ container.14
item replace entity @a[tag=mandomhandling,limit=1] inventory.15 from block ~ ~ ~ container.15
item replace entity @a[tag=mandomhandling,limit=1] inventory.16 from block ~ ~ ~ container.16
item replace entity @a[tag=mandomhandling,limit=1] inventory.17 from block ~ ~ ~ container.17
item replace entity @a[tag=mandomhandling,limit=1] inventory.18 from block ~ ~ ~ container.18
item replace entity @a[tag=mandomhandling,limit=1] inventory.19 from block ~ ~ ~ container.19
item replace entity @a[tag=mandomhandling,limit=1] inventory.20 from block ~ ~ ~ container.20
item replace entity @a[tag=mandomhandling,limit=1] inventory.21 from block ~ ~ ~ container.21
item replace entity @a[tag=mandomhandling,limit=1] inventory.22 from block ~ ~ ~ container.22
item replace entity @a[tag=mandomhandling,limit=1] inventory.23 from block ~ ~ ~ container.23
item replace entity @a[tag=mandomhandling,limit=1] inventory.24 from block ~ ~ ~ container.24
item replace entity @a[tag=mandomhandling,limit=1] inventory.25 from block ~ ~ ~ container.25
item replace entity @a[tag=mandomhandling,limit=1] inventory.26 from block ~ ~ ~ container.26

#####copy ender chest data from lower chest
item replace entity @a[tag=mandomhandling,limit=1] enderchest.0 from block ~ ~-1 ~ container.0
item replace entity @a[tag=mandomhandling,limit=1] enderchest.1 from block ~ ~-1 ~ container.1
item replace entity @a[tag=mandomhandling,limit=1] enderchest.2 from block ~ ~-1 ~ container.2
item replace entity @a[tag=mandomhandling,limit=1] enderchest.3 from block ~ ~-1 ~ container.3
item replace entity @a[tag=mandomhandling,limit=1] enderchest.4 from block ~ ~-1 ~ container.4
item replace entity @a[tag=mandomhandling,limit=1] enderchest.5 from block ~ ~-1 ~ container.5
item replace entity @a[tag=mandomhandling,limit=1] enderchest.6 from block ~ ~-1 ~ container.6
item replace entity @a[tag=mandomhandling,limit=1] enderchest.7 from block ~ ~-1 ~ container.7
item replace entity @a[tag=mandomhandling,limit=1] enderchest.8 from block ~ ~-1 ~ container.8
item replace entity @a[tag=mandomhandling,limit=1] enderchest.9 from block ~ ~-1 ~ container.9
item replace entity @a[tag=mandomhandling,limit=1] enderchest.10 from block ~ ~-1 ~ container.10
item replace entity @a[tag=mandomhandling,limit=1] enderchest.11 from block ~ ~-1 ~ container.11
item replace entity @a[tag=mandomhandling,limit=1] enderchest.12 from block ~ ~-1 ~ container.12
item replace entity @a[tag=mandomhandling,limit=1] enderchest.13 from block ~ ~-1 ~ container.13
item replace entity @a[tag=mandomhandling,limit=1] enderchest.14 from block ~ ~-1 ~ container.14
item replace entity @a[tag=mandomhandling,limit=1] enderchest.15 from block ~ ~-1 ~ container.15
item replace entity @a[tag=mandomhandling,limit=1] enderchest.16 from block ~ ~-1 ~ container.16
item replace entity @a[tag=mandomhandling,limit=1] enderchest.17 from block ~ ~-1 ~ container.17
item replace entity @a[tag=mandomhandling,limit=1] enderchest.18 from block ~ ~-1 ~ container.18
item replace entity @a[tag=mandomhandling,limit=1] enderchest.19 from block ~ ~-1 ~ container.19
item replace entity @a[tag=mandomhandling,limit=1] enderchest.20 from block ~ ~-1 ~ container.20
item replace entity @a[tag=mandomhandling,limit=1] enderchest.21 from block ~ ~-1 ~ container.21
item replace entity @a[tag=mandomhandling,limit=1] enderchest.22 from block ~ ~-1 ~ container.22
item replace entity @a[tag=mandomhandling,limit=1] enderchest.23 from block ~ ~-1 ~ container.23
item replace entity @a[tag=mandomhandling,limit=1] enderchest.24 from block ~ ~-1 ~ container.24
item replace entity @a[tag=mandomhandling,limit=1] enderchest.25 from block ~ ~-1 ~ container.25
item replace entity @a[tag=mandomhandling,limit=1] enderchest.26 from block ~ ~-1 ~ container.26

#copy armor then offhand
item replace entity @a[tag=mandomhandling,limit=1] armor.head from block ~ ~1 ~ container.0
item replace entity @a[tag=mandomhandling,limit=1] armor.chest from block ~ ~1 ~ container.1
item replace entity @a[tag=mandomhandling,limit=1] armor.legs from block ~ ~1 ~ container.2
item replace entity @a[tag=mandomhandling,limit=1] armor.feet from block ~ ~1 ~ container.3
item replace entity @a[tag=mandomhandling,limit=1] weapon.offhand from block ~ ~1 ~ container.4

#copy hotbar
item replace entity @a[tag=mandomhandling,limit=1] hotbar.0 from block ~ ~1 ~ container.5
item replace entity @a[tag=mandomhandling,limit=1] hotbar.1 from block ~ ~1 ~ container.6
item replace entity @a[tag=mandomhandling,limit=1] hotbar.2 from block ~ ~1 ~ container.7
item replace entity @a[tag=mandomhandling,limit=1] hotbar.3 from block ~ ~1 ~ container.8
item replace entity @a[tag=mandomhandling,limit=1] hotbar.4 from block ~ ~1 ~ container.9
item replace entity @a[tag=mandomhandling,limit=1] hotbar.5 from block ~ ~1 ~ container.10
item replace entity @a[tag=mandomhandling,limit=1] hotbar.6 from block ~ ~1 ~ container.11
item replace entity @a[tag=mandomhandling,limit=1] hotbar.7 from block ~ ~1 ~ container.12
item replace entity @a[tag=mandomhandling,limit=1] hotbar.8 from block ~ ~1 ~ container.13