execute unless entity @s[distance=..1.5] run return fail
$execute if block ~ ~ ~ chest run return run function chest_picker:container/pick {"hand":"$(hand)","container":"chest"}
$execute if block ~ ~ ~ barrel run return run function chest_picker:container/pick {"hand":"$(hand)","container":"barrel"}
execute unless block ~ ~ ~ air run return fail

$execute positioned ^ ^ ^.25 run function chest_picker:container/raycast {"hand":"$(hand)"}