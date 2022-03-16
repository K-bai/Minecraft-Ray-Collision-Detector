execute if block ~ ~ ~ #candles[candles=1] run function mrcd:private/types/candle/1
execute if block ~ ~ ~ #candles[candles=2] run function mrcd:private/types/candle/2
execute if block ~ ~ ~ #candles[candles=3] run function mrcd:private/types/candle/3
execute if block ~ ~ ~ #candles[candles=4] run function mrcd:private/types/candle/4

function mrcd:private/cube/main
tag @s add mrcd_detected
