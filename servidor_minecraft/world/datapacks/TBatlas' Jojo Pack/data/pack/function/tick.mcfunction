#################Arrow, corpse part, stand ticks if a user has that stand
######devil's palm
function pack:d4cfunctions/devilspalm/tick
execute as @r at @s positioned ~ ~20 ~ if entity @e[distance=...5,tag=devilpalmglow] run function pack:d4cfunctions/devilspalm/collect_corpse
######give tusk corpse part if d4c corpse part is on ground with 2 netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300006,cp:1b}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run give @p minecraft:carrot_on_a_stick{display:{Name:'{"text":"Tusk Holy Corpse","color":"blue","bold":true,"italic":true}'},CustomModelData:300006,cp:2b} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300006,cp:1b}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run kill @e[type=item,distance=..1]
####give stand if corpse part is clicked
execute as @e[scores={nailfired=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{cp:2b}}}] unless entity @s[scores={standindex=1..}] run function pack:tuskfunctions/bless
####Create arrows
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b}},distance=...5] run give @p spectral_arrow{display:{Name:'{"text":"Stand Arrow","color":"light_purple","bold":true,"italic":true}'},CustomModelData:123456,SA:1b,Enchantments:[{}]} 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b}},distance=...5] run give @p spectral_arrow{display:{Name:'{"text":"Stand Arrow","color":"light_purple","bold":true,"italic":true}'},CustomModelData:123456,SA:1b,Enchantments:[{}]} 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
##reset universe rules
execute if score .global universereset matches 1 run function pack:mihfunctions/timeaccel/uniresetpassive
#################generic variables used by multiple packs
#get x,y,z positions
execute as @e store result score @s xx run data get entity @s Pos[0] 1
execute as @e store result score @s yy run data get entity @s Pos[1] 1
execute as @e store result score @s zz run data get entity @s Pos[2] 1
###storing x and z as delta
function pack:scfunctions/scdelta
#get health
execute as @e store result score @s health run data get entity @s Health 1
#Get xp
execute as @a store result score @s xp run xp query @s levels
#get time
execute store result score .global worldtime run time query day
execute store result score .global daytime run time query daytime
#dworldtime, checks if it becomes a new day
scoreboard players operation .global worldtime2 -= .global worldtime
#get moonphase
execute store result score .global moonphase run scoreboard players operation .global worldtime %= .global 8
#get falldistance
execute as @a store result score @s falldistance run data get entity @s FallDistance
#get firetune
execute as @a store result score @s firetime run data get entity @s Fire
#kill dropped items
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tbatlaspackkillitem:1b}}}]
#################execute tick functions of packs if a user has the designated standindex
##tusk
execute as @a[scores={standindex=1}] run function pack:tuskfunctions/loop
##ge
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=2}] run function pack:gefunctions/gibstand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=2}] run function pack:gefunctions/loop
##wou
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=3}] run function pack:woufunctions/twougibstand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=3}] run function pack:woufunctions/loop
##SC
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=4}] run function pack:scfunctions/givestand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=4}] run function pack:scfunctions/loop
##d4c
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=5}] run function pack:d4cfunctions/geebstand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=5}] run function pack:d4cfunctions/tick

##Whitesnake
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:black_dye",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=6}] run function pack:wsfunctions/wsgivestand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:black_dye",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=6}] run function pack:wsfunctions/loop

##cmoon
execute as @a[scores={standindex=7}] at @s run function pack:cmoonfunctions/loop

##MADE IN HEAVEN
execute as @a[scores={standindex=8}] at @s run function pack:mihfunctions/loop

##Crazy Diamond
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=9}] run function pack:crazydiamondfunctions/cdgivestand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=9}] at @s run function pack:crazydiamondfunctions/loop

##mandom
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300006,cp:1b}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:leather",Count:1b}}] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=10}] run function pack:mandomfunctions/givestand
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300006,cp:1b}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:leather",Count:1b}}] run kill @e[distance=...6,type=minecraft:item]
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:1b}},distance=...5] run execute as @p unless entity @s[scores={standindex=1..}] unless entity @a[scores={standindex=10}] run function pack:mandomfunctions/givestand
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{SA:1b}}}] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:1b}},distance=...5] run kill @e[distance=...6,type=minecraft:item]
execute as @a[scores={standindex=10}] at @s run function pack:mandomfunctions/loop

#####################Items that all players may have access to
####The Holy Bible
execute as @a[scores={readingbible=1},nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Bible"}}}] at @s unless entity @e[tag=pucci] run function pack:pucci/pucci_summon
##Pucci talking
execute as @e[tag=pucci,scores={puccitimer=1..1800}] at @s run function pack:pucci/puccitalk
##pucci passive
execute as @e[tag=pucci,scores={puccitimer=1800..}] at @s run function pack:pucci/puccipassive
##whitesnake discs
#throwing
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,Slot:-106b,tag:{wsdisc:1b}}]}] at @s anchored eyes run function pack:wsfunctions/discmelee
execute as @a[scores={itemuse2=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wsdisc:1b}}}] at @s anchored eyes run function pack:wsfunctions/discthrow
execute as @a[scores={itemuse2=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{instantwsdisc:1b}}}] at @s anchored eyes run function pack:wsfunctions/discinstant
#impact
execute as @e[tag=throwndiscn] at @s unless predicate pack:is_riding_snowball run function pack:wsfunctions/discland
#ws creeper
execute as @a at @s if entity @e[tag=wscreeper,distance=..5] run tag @e[tag=wscreeper,sort=nearest,limit=1,distance=..5] add wsexploding
execute as @a at @s if entity @e[tag=wscreeper,distance=..5] run playsound minecraft:entity.creeper.primed ambient @a ~ ~ ~ 2 1
execute as @a at @s if entity @e[tag=wscreeper,distance=..5] run schedule function pack:wsfunctions/wsexplode 30t
execute as @a at @s if entity @e[tag=wscreeper,distance=..5] run tag @e[tag=wscreeper,sort=nearest,limit=1,distance=..5] remove wscreeper
#ws pacified
execute as @e[tag=wspacified,type=creeper] run data merge entity @s {ignited:0b}
execute as @e[tag=wspacified,type=player] run effect give @s minecraft:mining_fatigue 1 10 true
execute as @a[nbt={Health:0f},tag=wspacified] run tag @s remove wspacified
#ws water
execute as @e[tag=wsneedswater] run effect give @s minecraft:water_breathing 1 1 true
execute as @e[tag=wsneedswater] at @s unless block ~ ~ ~ #pack:ocean_wet run effect give @s minecraft:wither 1 1 true
execute as @a[nbt={Health:0f},tag=wsneedswater] run tag @s remove wsneedswater
#ws hostile mobs
execute as @e[tag=!wshostilemover,tag=wsdischostile] at @s run function pack:wsfunctions/wshostilepassive
execute as @e[tag=wshostilemover] at @s unless entity @e[distance=..4,tag=wsdischostile] run kill @s 
#MIH clean up afterimages
execute unless entity @a[tag=mihuser] run kill @e[tag=mihaa]
execute unless entity @a[tag=mihuser] run kill @e[tag=mihaab]

#######gun
execute as @r[scores={d4citemuse=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300001}}}] at @s anchored eyes run function pack:d4cfunctions/gun
execute as @r[scores={d4citemuse=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:-106b,tag:{CustomModelData:300001}}]}] at @s anchored eyes run function pack:d4cfunctions/guno
execute as @r[scores={d4citemuse=1,dreloadtimer=30},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:300002}}}] at @s run function pack:d4cfunctions/gunr
execute as @r[scores={dreloadtimer=0..29}] run scoreboard players add @s dreloadtimer 1
execute as @e[tag=d4bullet] at @s run particle minecraft:crit ~ ~ ~ .1 .1 .1 .1 1 force

###########clone tick
##function dedicated to moving clone pieces to their owners
tag @e[tag=clonemver] add clonenotmoved
execute as @e[type=wolf,tag=clonemver,limit=1,sort=random] at @s run function pack:d4cfunctions/clones/clonepiecestogether
##functions executed by every clone every tick
execute as @e[tag=d4cclone] at @s run function pack:d4cfunctions/clones/clonetick

###ammo hit
execute as @e[tag=d4bulletn] at @s unless predicate pack:is_riding_snowball run function pack:d4cfunctions/bullethit
execute as @e[tag=d4bullet] run scoreboard players add @s dbullettimer 1
execute as @e[tag=d4bullet,scores={dbullettimer=90..}] run kill @s
##ammo visfix
execute as @e[type=snowball,tag=d4bulletn] run function pack:d4cfunctions/vis_fix
execute as @e[type=snowball,tag=throwndiscn] run function pack:d4cfunctions/vis_fix
scoreboard players operation .global visfix *= .-1 visfix
scoreboard players set @a d4citemuse 0
##d4c dimension create void
execute as @e[tag=dimensionvoid] at @s run function pack:d4cfunctions/dimension/dimensionvoid

##clear mandom revolver from everyone
clear @a[tag=!mandomuser] carrot_on_a_stick{mandomrevolver:1b} 1
####################################Things that must happen after everything else
#####player death count reset
scoreboard players set @a playerdeath 0
#####player item use reset
scoreboard players set @a itemuse 0
scoreboard players set @a itemuse2 0
#####player bible reading unset
scoreboard players set @a readingbible 0
#####worldtime2
execute store result score .global worldtime2 run time query day