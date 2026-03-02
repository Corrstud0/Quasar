# read passed block id
data modify storage quasar:temp block set from storage quasar:temp block

# summon marker at this block
summon marker ~ ~ ~ {Tags:["quasar.error.marker"]}

# run the correct outline function
$execute positioned ^ ^-0.5 ^ run function quasar:particles/outline/block/$(block)
