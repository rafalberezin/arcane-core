#> arcane_core.internal:module/animation/root/teleport
#
# @internal


tp @s ~ ~ ~ ~ ~
scoreboard players set @s arcane_core.internal.module.animation.root.timeout 100

execute if function arcane_core.api:entity/if_has_passengers run return 0

# Normally I would use a tag here, BUT
# when the tp command has run in the different dimension (which is when this code executes)
# the entity's state is captured to later recreate it in the new dimension
# and any further changes to this entity in this context won't persist.
# I may be wrong on my theory, but that's what my testing indicates.
# Since the scoreboard is not saved directly on the entity, it works just fine so that's why I use it.

scoreboard players add @s arcane_core.internal.module.animation.root.timeout 1

scoreboard players operation #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id = @s arcane_core.internal.module.animation.root.link_id
execute as @e if score @s arcane_core.internal.module.animation.root.linked_to = #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id run function arcane_core.internal:module/animation/root/auto_remount/teleport_recursive
