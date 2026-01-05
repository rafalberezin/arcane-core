#> arcane_core.internal:error/get_message_m
#
# @internal
#
# @macro
# 	error_code int

$data modify storage arcane_core.api:io out.return set from storage arcane_core.internal:core /.errors[$(error_code)]
