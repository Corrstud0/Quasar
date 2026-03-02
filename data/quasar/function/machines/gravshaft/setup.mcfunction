#init, scores
function quasar:machines/gravshaft/init_scores
#Abit redundent but run the config incase of bypass
function quasar:load

tellraw @a [{"text":"[GravShaft] ","color":"blue"}, {"text":"Setup In Progress", "color":"yellow"}]
particle end_rod ~ ~ ~ 1.1 1.1 1.1 0.01 10 normal
function quasar:machines/gravshaft/states/blocks/setup_check/block_list