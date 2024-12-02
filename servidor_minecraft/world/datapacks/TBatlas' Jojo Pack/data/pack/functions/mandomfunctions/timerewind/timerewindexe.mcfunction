
###the following functions are executed by mandom victims one at a time
tag @e[tag=mandomtgt] add mandomnothandled
execute as @e[tag=mandomnothandled,limit=1,sort=random] run function pack:mandomfunctions/timerewind/timerewindafflicted