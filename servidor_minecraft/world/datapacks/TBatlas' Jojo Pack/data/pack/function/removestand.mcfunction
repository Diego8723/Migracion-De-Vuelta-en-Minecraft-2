####assume function is being executed by the person who is removing their stand
clear @s minecraft:carrot_on_a_stick{tbatlaspackkillitem:1b}
clear @s minecraft:carrot_on_a_stick{standitem:1b}
#####Tusk remove function
###Unsummoning Tusk
execute as @s[scores={tuskuser=1,standsummoned=1}] at @s run scoreboard players set @s standsummoned 0
execute as @s[scores={tuskuser=1,standsummoned=0}] at @s run kill @e[tag=tusk]
execute as @s[tag=tuskuser] run kill @e[tag=tusk2hole]
#remove infinite rotation
execute as @s[tag=tuskuser] run tag @e[tag=infinitespin2] add infspinremovequeued
execute as @e[limit=1,tag=infspinremovequeued] run function pack:tuskfunctions/infspinremove
execute as @e[limit=1,tag=infspinpropnothandled,sort=random] at @s run function pack:tuskfunctions/infspincleanup
###removing scoreboards
scoreboard players reset @s tuskuser
scoreboard players reset @s standsummoned
scoreboard players reset @s act
scoreboard players reset @s idle
scoreboard players reset @s nailtimer
scoreboard players reset @s nailfired
scoreboard players reset @s horsetimer
scoreboard players reset @s tuskanim
scoreboard players reset @s health
scoreboard players reset @s spin
scoreboard players reset @s milmk
scoreboard players reset @s jesustimer
tag @s remove tuskuser

#######ge remove function
##unsummon
execute as @s[scores={geuser=1}] run kill @e[limit=1,tag=ge]
execute as @s[scores={geuser=1}] run function pack:gefunctions/undocreatelife
###reset scoreboards
scoreboard players reset @s geuser
scoreboard players reset @s geidle
scoreboard players reset @s gestandsummoned
scoreboard players reset @s geitemuse
scoreboard players reset @s gepunching
scoreboard players reset @s gepunchtimer
scoreboard players reset @s gelifecreateEXE
scoreboard players reset @s gelctimer
scoreboard players reset @s rtztimer
scoreboard players reset @s rtz
scoreboard players reset @s req

tag @s remove geuser
team leave @s

#######WOU remove function
##unsummon
execute as @s[scores={twouuser=1}] run kill @e[tag=twoubase]
execute as @s[scores={twouuser=1}] run kill @e[tag=twouapparition]
execute as @s[scores={twouuser=1}] run kill @e[tag=tooru]
##reset scoreboards
scoreboard players reset twouuser
scoreboard players reset twousummoned
scoreboard players reset twouisstand
scoreboard players reset twouidle
scoreboard players reset twouitemuse
scoreboard players reset twouheadpos
scoreboard players reset twoubform
scoreboard players reset twouimtimer
scoreboard players reset twouimmaterial
scoreboard players reset twoupunchtimer
scoreboard players reset twoupunch
scoreboard players reset calamityap
scoreboard players reset health
tag @e remove calamity1
tag @e remove calamity2
tag @e remove calamity3
tag @e remove markedforcalamity
tag @s remove calamitousitemson
tag @s remove twouuser
########SC remove function
####unsummon
execute as @s[scores={scuser=1}] run kill @e[tag=silverchariot]
execute as @s[tag=scuser] run kill @e[tag=scuserpickup]
####scoreboard reset
tag @s remove scuser
scoreboard players reset @s scuser
scoreboard players reset @s scsummoned
scoreboard players reset @s scidle
scoreboard players reset @s scskewertimer
scoreboard players reset @s scbarragetimer
scoreboard players reset @s scarmored
scoreboard players reset @s scdeflecttimer
scoreboard players reset @s sceject
scoreboard players reset @s scejecttimer

##scr user scores
scoreboard players reset @s scraura
scoreboard players reset @s scrisstand

########D4C Remove function
###unsummon
execute as @s[scores={dfourcuser=1}] run tag @e[tag=lthost] remove lthost
execute as @s[scores={dfourcuser=1}] run kill @e[tag=d4c]
##remove scores
scoreboard players reset @s dfourcuser
scoreboard players reset @s dfouridle
scoreboard players reset @s dfoursilent
scoreboard players reset @s dfoursummoned
scoreboard players reset @s dfourchop
scoreboard players reset @s dfourbarrage
scoreboard players reset @s dclonetimer
scoreboard players reset @s dclonestimer
scoreboard players reset @s dcloneitem
scoreboard players reset @s dfourltcdtimer
scoreboard players reset @s dfourdimension


scoreboard players reset @s ddimensioncd
scoreboard players reset @s ddimensiontimer
###kill clones
tag @e[tag=d4clonemarked] remove d4clonemarked

#############WS remove stand
###unsummon
execute as @s[scores={wsuser=1}] run kill @e[tag=ws]
####scoreboards
tag @s remove wsuser
scoreboard players reset @s wsuser
scoreboard players reset @s wsphase
scoreboard players reset @s silenced
scoreboard players reset @s standsummoned
scoreboard players reset @s idle
scoreboard players reset @s wspunch
#####leave team
team leave @s
tag @s remove wsstealvulnerable
####reset stand index
scoreboard players set @s standindex 0

###############3CMOON REMOVE STAND
execute as @s[scores={cmuser=1}] run kill @e[tag=cm]
execute as @s[scores={cmuser=1}] run tag @s remove cmgravityexclude
####scoreboards
tag @s remove cmuser
scoreboard players reset @s cmuser
scoreboard players reset @s silenced
scoreboard players reset @s standsummoned
scoreboard players reset @s idle
scoreboard players reset @s cmpunch
scoreboard players reset @s cmbarraging
tag @e remove cmgravityexcluded
tag @e remove cmgravityexclude
#############M A D E  I N  H E A V E N
execute as @s[scores={mihuser=1}] run kill @e[tag=mih]
####scoreboard
tag @s remove mihuser
tag @s remove resettinguniverse
##un-reset the universe
execute as @s[scores={mihuser=1}] run function pack:mihfunctions/timeaccel/uniunreset
scoreboard players reset @s mihuser
scoreboard players reset @s silenced
scoreboard players reset @s standsummoned
scoreboard players reset @s idle
scoreboard players reset @s mihpunch
scoreboard players reset @s mihbarraging
scoreboard players reset @s mihimagetimer
scoreboard players reset @s mihphase
scoreboard players reset @s mihtimeaccelcd
scoreboard players reset @s mihanimtimer

#############Crazy Diamond
execute as @s[scores={cduser=1}] run kill @e[tag=cd]
####scoreboard
tag @s remove cduser
scoreboard players reset @s cduser
scoreboard players reset @s silenced
scoreboard players reset @s standsummoned
scoreboard players reset @s idle
scoreboard players reset @s cdpunch
scoreboard players reset @s cdbarraging

scoreboard players reset @s cdanimtimer


###########Mandom
####scoreboards
tag @s remove mandomuser
scoreboard players reset @s mandomuser
scoreboard players reset @s silenced
scoreboard players reset @s standsummoned
scoreboard players reset @s idle
scoreboard players reset @s timerewindindex
tag @s remove mandomnorevolver
