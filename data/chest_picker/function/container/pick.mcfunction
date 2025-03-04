playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.5 1
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 3 force @a

$item replace entity @s weapon.$(hand)hand with air

$summon item ~ ~ ~ {PickupDelay:0,Invulnerable:1b,Tags:["chest_picker.item","chest_picker.item.new"],Item:{id:"minecraft:$(container)",count:1,components:{"minecraft:container":[]}}}

data modify storage chest_picker:main items set from block ~ ~ ~ Items
data modify storage chest_picker:main container set value []
execute if data storage chest_picker:main items[0] run function chest_picker:container/item

data modify entity @n[tag=chest_picker.item.new,distance=..6] Item.components."minecraft:container" set from storage chest_picker:main container

tp @n[tag=chest_picker.item.new,distance=..6] @s

tag @n[tag=chest_picker.item.new,distance=..6] remove chest_picker.item.new

setblock ~ ~ ~ air