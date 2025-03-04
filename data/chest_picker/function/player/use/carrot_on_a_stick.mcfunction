scoreboard players reset @s chest_picker.player.use.carrot_on_a_stick

execute if predicate chest_picker:is_sneaking if predicate chest_picker:chest_picker/mainhand at @s anchored eyes positioned ^ ^ ^ run return run function chest_picker:container/raycast {"hand":"main"}
execute if predicate chest_picker:is_sneaking if predicate chest_picker:chest_picker/offhand at @s anchored eyes positioned ^ ^ ^ run return run function chest_picker:container/raycast {"hand":"off"}