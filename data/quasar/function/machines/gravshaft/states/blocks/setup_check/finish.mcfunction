execute if score @s quasar.state_A matches 0 run scoreboard players set @s quasar.state_A 1
execute if score @s quasar.state_B matches 1.. run tellraw @a [{"text":"[GravShaft] ","color":"blue"}, {"text":"ERROR, THERE ARE: ","color": "red"}, {"score":{"name":"@s","objective":"quasar.state_B"}, "color": "red"}, {"text":" MISSING OR INCORRECT BLOCKS, FIX THIS ISSUE NOW","color":"red"}]
