#> arcane_core.api:time/moon/get_icon
#
# Get text component for the icon of the current moon phase.
#
# @api
#
# @output
#	storage arcane_core.api:io out.return
# 		Text component containig the icon rendering instruction.

function arcane_core.internal:util/time/moon/get_icon/main
data modify storage arcane_core.api:io out.return set from storage arcane_core.internal:temp /.moon
