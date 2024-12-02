######as the projectile, repeat this code until you hit your target
###target has the tag "wouprojtgt"

#move an incriment
execute rotated as @a[tag=mandomuser,limit=1] run teleport @s ^ ^ ^.25
#particle
particle dust 1.000 0.831 0.161 1 ~ ~ ~ 0 0 0 1 1 force
#add to movement counter
scoreboard players add @s wouraytracerecursion 1

#do damage if hit-add tag first
execute as @e[type=!#pack:not_alive,distance=..1.3,tag=!mandomuser] run tag @s add projhit
#final check before doing damage
execute as @e[tag=projhit] run function pack:removeprojhittag
#reset recursion scoreboard
execute unless block ~ ~ ~ #pack:can_pass_through run scoreboard players set @s wouraytracerecursion 80
execute if entity @e[tag=projhit] run scoreboard players set @s wouraytracerecursion 80
#fx
execute if entity @s[scores={wouraytracerecursion=80..}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[scores={wouraytracerecursion=80..}] at @s run playsound minecraft:entity.iron_golem.damage ambient @a ~ ~ ~
execute if entity @s[scores={wouraytracerecursion=80..}] at @s run execute unless block ~ ~ ~ minecraft:bedrock unless block ~ ~ ~ minecraft:end_portal unless block ~ ~ ~ minecraft:end_portal_frame unless block ~ ~ ~ minecraft:end_gateway run setblock ~ ~ ~ air destroy

#damage
execute as @e[tag=projhit] run damage @s 11

#remove hit tag
tag @e remove projhit

kill @s[scores={wouraytracerecursion=80..}]
#recurse if miss / not out of recursions
execute unless entity @s[scores={wouraytracerecursion=80..}] as @s at @s run function pack:mandomfunctions/mandomprojectileraytrace