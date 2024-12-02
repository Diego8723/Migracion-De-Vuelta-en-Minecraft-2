#####This function creates a singular debris. Upon activation, this function will essentially turn
####whatever block it is activated on into a debris entity.
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["ubsdebrispos","queued"]}
execute as @e[tag=ubsdebrispos,tag=queued] store result score @s originx run data get entity @s Pos[0]
execute as @e[tag=ubsdebrispos,tag=queued] store result score @s originy run data get entity @s Pos[1]
execute as @e[tag=ubsdebrispos,tag=queued] store result score @s originz run data get entity @s Pos[2]

#launching debris
execute as @e[tag=queued] store result score @s xx run data get entity @s Pos[0] 1
execute as @e[tag=queued] store result score @s yy run data get entity @s Pos[1] 1
execute as @e[tag=queued] store result score @s zz run data get entity @s Pos[2] 1