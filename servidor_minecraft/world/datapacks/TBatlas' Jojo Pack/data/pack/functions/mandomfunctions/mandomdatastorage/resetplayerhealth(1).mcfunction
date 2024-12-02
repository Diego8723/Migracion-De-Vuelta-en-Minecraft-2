#####Massive list of attribute commands bc I can't edit player nbt :/
###executed by a player remembering their previous hp before a 

#first, set max health
attribute @s[scores={mandomstoredhp=1}] minecraft:generic.max_health base set 1
attribute @s[scores={mandomstoredhp=2}] minecraft:generic.max_health base set 2
attribute @s[scores={mandomstoredhp=3}] minecraft:generic.max_health base set 3
attribute @s[scores={mandomstoredhp=4}] minecraft:generic.max_health base set 4
attribute @s[scores={mandomstoredhp=5}] minecraft:generic.max_health base set 5
attribute @s[scores={mandomstoredhp=6}] minecraft:generic.max_health base set 6
attribute @s[scores={mandomstoredhp=7}] minecraft:generic.max_health base set 7
attribute @s[scores={mandomstoredhp=8}] minecraft:generic.max_health base set 8
attribute @s[scores={mandomstoredhp=9}] minecraft:generic.max_health base set 9
attribute @s[scores={mandomstoredhp=10}] minecraft:generic.max_health base set 10
attribute @s[scores={mandomstoredhp=11}] minecraft:generic.max_health base set 11
attribute @s[scores={mandomstoredhp=12}] minecraft:generic.max_health base set 12
attribute @s[scores={mandomstoredhp=13}] minecraft:generic.max_health base set 13
attribute @s[scores={mandomstoredhp=14}] minecraft:generic.max_health base set 14
attribute @s[scores={mandomstoredhp=15}] minecraft:generic.max_health base set 15
attribute @s[scores={mandomstoredhp=16}] minecraft:generic.max_health base set 16
attribute @s[scores={mandomstoredhp=17}] minecraft:generic.max_health base set 17
attribute @s[scores={mandomstoredhp=18}] minecraft:generic.max_health base set 18
attribute @s[scores={mandomstoredhp=19}] minecraft:generic.max_health base set 19
attribute @s[scores={mandomstoredhp=20}] minecraft:generic.max_health base set 20
attribute @s[scores={mandomstoredhp=21}] minecraft:generic.max_health base set 21
attribute @s[scores={mandomstoredhp=22}] minecraft:generic.max_health base set 22
attribute @s[scores={mandomstoredhp=23}] minecraft:generic.max_health base set 23
attribute @s[scores={mandomstoredhp=24}] minecraft:generic.max_health base set 24
attribute @s[scores={mandomstoredhp=25}] minecraft:generic.max_health base set 25
attribute @s[scores={mandomstoredhp=26}] minecraft:generic.max_health base set 26
attribute @s[scores={mandomstoredhp=27}] minecraft:generic.max_health base set 27
attribute @s[scores={mandomstoredhp=28}] minecraft:generic.max_health base set 28
attribute @s[scores={mandomstoredhp=29}] minecraft:generic.max_health base set 29
#second, heal
effect give @s minecraft:instant_health 1 20 true

#add tag so we remember to replace max hp after mandom user finishes executing functions
tag @s add mandomfixmaxhp