#> arcane_core.internal:error/load/register_project
#
# @internal

execute store result score #arcane_core.internal:error.register.project.namespace arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "The project \"namespace\" must be a non-empty string."

execute store result score #arcane_core.internal:error.register.project.name arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "The project \"name\" must be a non-empty string."

execute store result score #arcane_core.internal:error.register.project.version arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "The project \"version\" must be an array of 3 non-negative numbers."

execute store result score #arcane_core.internal:error.register.project.core_version arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "The project \"core_version\" must be an array of 3 non-negative numbers."

execute store result score #arcane_core.internal:error.register.project.resourcepack.required arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "If \"resourcepack\" is specified, \"resourcepack.required\" must be a boolean."

scoreboard players operation #arcane_core.internal:error_group.register.project.invalid_input.start arcane_core.api.state = #arcane_core.internal:error.register.project.namespace arcane_core.api.state
scoreboard players operation #arcane_core.internal:error_group.register.project.invalid_input.end arcane_core.api.state = #arcane_core.internal:error.register.project.resourcepack.required arcane_core.api.state

execute store result score #arcane_core.internal:error.register.project.incompatible_version arcane_core.api.state run data get storage arcane_core.internal:core /.errors
data modify storage arcane_core.internal:core /.errors append value "The required framework version is not fully compatible with the installed version."
