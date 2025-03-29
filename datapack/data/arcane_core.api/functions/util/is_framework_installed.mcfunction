#> arcane_core.api:util/is_framework_installed
#
# Check if the framework is present and enabled.
#
# Use that to display a warning when your is installed without the framework present.
# For example:
#
# [function tag: `#minecraft:load`] (.json)
# ```
# { "values": ["(namespace):check_framework"] }
# ```
#
# [function: `(namespace):check_framework`] (.mcfunction)
# ```
# execute if function arcane_core.api:util/is_framework_installed run return 0
# # DISPLAY THE WARNING HERE (or do whatever else you want if Arcane Core is not installed)
# ```
#
# @api

return 1
