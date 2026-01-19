#> arcane_core.api:entity/link/owner/unlink
#
# Remove the link ownership of the executing entity.
# Only use this on utility entities you created and fully manage.
#
# @api
# @context owner of other entities

scoreboard players reset @s arcane_core.internal.link.link_id
