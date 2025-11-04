$execute $(tier) $(check) run return $(function)

#remove current check and move on to the next
data remove storage quasar:temp temp[0]
function quasar:multiblock_system/checks with storage quasar:temp temp[0]