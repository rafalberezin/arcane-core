#> arcane_core.internal:data/load_report/compose/add_core_version_warning/main
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.start", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: "[!] ", color: "#c44949"}, \
	{text: "Multiple versions of ", color: "#c44949"}, \
	{text: "Arcane Core", color: "#edb97e"}, \
	{text: " detected! ", color: "#c44949"}, \
	{text: "", extra: [ \
		{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.badge.info", fallback: ""}, \
		{translate: "arcane_core.internal:util.empty", fallback: "[i]", color: "#5991ec"}, \
	]}, \
]
function arcane_core.internal:data/load_report/compose/compat_adaptive_newline

data modify storage arcane_core.internal:temp /.text_line set value [ \
	{text: "", color: "#edb97e"}, \
	{text: "Detected versions:", color: "white"}, \
]

data modify storage arcane_core.internal:temp /.any set from storage arcane_core.internal:core /.core_versions

function arcane_core.internal:data/load_report/compose/add_core_version_warning/compose_version_list
function arcane_core.internal:data/load_report/compose/add_core_version_warning/compat_set_hover

data modify storage arcane_core.internal:core /.load_report append value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.continue", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: " |  ", color: "#c44949"}, \
	{text: "Please ensure only one is installed.", color: "#c44949"}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.end.new_line", fallback: ""}, \
]
function arcane_core.internal:data/load_report/compose/compat_adaptive_newline
