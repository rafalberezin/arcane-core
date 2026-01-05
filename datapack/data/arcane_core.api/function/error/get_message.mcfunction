#> arcane_core.api:error/get_message
#
# Retrieve a message associated with the last error.
#
# @api
#
# @output
# 	storage arcane_core.api:io
# 		out.return string
# 			The message associated with the last error.

execute store result storage arcane_core.internal:temp /.macro.error_code int 1 run scoreboard players get #arcane_core.internal:error arcane_core.state
function arcane_core.internal:error/get_message_m with storage arcane_core.internal:temp /.macro
