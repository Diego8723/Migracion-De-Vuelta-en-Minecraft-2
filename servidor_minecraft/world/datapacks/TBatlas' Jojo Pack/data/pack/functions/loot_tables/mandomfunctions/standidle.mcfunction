###Functions executed while mandom is summoned. Usually for telling user state of time-rewind
###using time rewind

###stage 2-rewind now
execute as @a[scores={standsummoned=1,itemuse=1,timerewindstage=1}] run scoreboard players set @s timerewindstage 2
###stage 1-currently rewinding
##20 title commands so that user knows how soon their cooldown ends
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=0..20}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ||||||||||||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=21..40}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊||||||||||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=41..60}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊||||||||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=61..80}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊||||||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=81..100}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊||||||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=101..120}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊▊||||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=121..140}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊▊▊||||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=141..160}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊▊▊▊||||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=161..180}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊▊▊▊▊||||","color":"gold","bold":true,"underlined":false}]
execute as @a[scores={standsummoned=1,timerewindstage=1,mandomabilityusetimer=181..200}] run title @s actionbar [{"text":"Rewind","color":"red","bold":true,"italic":true,"underlined":true},{"text":" ▊▊▊▊▊▊▊▊▊||","color":"gold","bold":true,"underlined":false}]


execute as @a[scores={timerewindstage=1,rtztimer=2..}] run scoreboard players set @s mandomtimer 0
execute as @a[scores={timerewindstage=2,rtztimer=2..}] run scoreboard players set @s timerewindstage 0

###stage 0-not rewinding
##using this item copies all information in the surrounding area.
execute as @a[scores={standsummoned=1,timerewindstage=0}] run title @s actionbar {"text":"Set rewind point","color":"red","bold":true,"italic":true,"underlined":true}
execute if entity @s[scores={standsummoned=1,itemuse=1,timerewindstage=0}] run function pack:mandomfunctions/timerewind/mandomuse