#> arcane_core.internal:util/installation/verify/main
#
# @internal

execute unless score #arcane_core.internal:temp.installation.major arcane_core.state = #arcane_core.internal:version.major arcane_core.state run return run function arcane_core.internal:util/installation/verify/fail

execute if score #arcane_core.internal:temp.installation.minor arcane_core.state > #arcane_core.internal:version.minor arcane_core.state run return run function arcane_core.internal:util/installation/verify/fail

execute if score #arcane_core.internal:temp.installation.minor arcane_core.state = #arcane_core.internal:version.minor arcane_core.state if score #arcane_core.internal:temp.installation.patch arcane_core.state > #arcane_core.internal:version.patch arcane_core.state run return run function arcane_core.internal:util/installation/verify/fail

data modify storage arcane_core.internal:core root.installation.success append from storage arcane_core.internal:temp root.installation.project_name
return 1
