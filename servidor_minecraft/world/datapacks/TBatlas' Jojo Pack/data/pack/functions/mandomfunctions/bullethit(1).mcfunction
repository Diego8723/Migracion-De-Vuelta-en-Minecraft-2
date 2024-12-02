##Ringo's bullets do way more damage
execute positioned ~ ~-1 ~ run damage @e[sort=nearest,limit=1,type=!#pack:not_alive,distance=..6,tag=!mandomuser] 6
execute as @e[tag=d4bulletn,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,Tags:["d4bulletnn"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;9868950]}]}}}}



##special coordinate tracking
execute as @e[tag=d4bulletnn] store result score @s xxx run data get entity @s Pos[0] 1
execute as @e[tag=d4bulletnn] store result score @s yyy run data get entity @s Pos[1] 1
execute as @e[tag=d4bulletnn] store result score @s zzz run data get entity @s Pos[2] 1

#break blocks
execute unless block ~ ~-.5 ~ minecraft:bedrock at @e[tag=d4bulletnn] unless block ~ ~-.5 ~ minecraft:end_portal unless block ~ ~-.5 ~ minecraft:end_portal_frame unless block ~ ~-.5 ~ minecraft:end_gateway run setblock ~ ~-.5 ~ air destroy
execute as @e[tag=d4bulletn,limit=1,sort=nearest] at @s run kill @s