#> arcane_core.internal:data/project/register/if_validate_input/version
#
# @internal

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register_project.version arcane_core.api.state

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.phase.register_project.project.version
execute unless function arcane_core.api:data/if_type/string run return 0
return run function arcane_core.api:data/if_considered/positive
