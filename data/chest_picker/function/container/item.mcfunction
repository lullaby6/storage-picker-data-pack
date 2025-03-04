data modify storage chest_picker:main item set value {}

data modify storage chest_picker:main item.slot set from storage chest_picker:main items[0].Slot
data modify storage chest_picker:main item.item.count set from storage chest_picker:main items[0].count
data modify storage chest_picker:main item.item.id set from storage chest_picker:main items[0].id
data modify storage chest_picker:main item.item.components set from storage chest_picker:main items[0].components

data modify storage chest_picker:main container append from storage chest_picker:main item

data remove storage chest_picker:main items[0]

execute if data storage chest_picker:main items[0] run function chest_picker:container/item