#> arcane_core.internal:data/load_report/compose/add_footer
#
# @internal

data modify storage arcane_core.internal:temp /.text_blob set value [ \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.info.start.new_line", fallback: "\n"}, \
	{text: "Menu: "}, \
	{ \
		text: "", \
		click_event: { \
			action: "run_command", \
			command: "/trigger arcane_core.menu", \
		}, \
		hover_event: { \
			action: "show_text", \
			value: [ \
				{text: "Click the button or use command:\n"}, \
				{text: "/trigger arcane_core.menu", color: "#edb97e"}, \
			], \
		}, \
		extra: [ \
			{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.button.open", fallback: ""}, \
			{translate: "arcane_core.internal:util.empty", fallback: "[OPEN]", color: "#5991ec"}, \
		], \
	}, \
	{text: "\n"}, \
	{translate: "arcane_core.internal:util.empty", fallback: "\n[!] You do not have the required ", color: "#c44949" }, \
	{translate: "arcane_core.internal:util.empty", fallback: "Arcane Core", color: "#edb97e" }, \
	{translate: "arcane_core.internal:util.empty", fallback: " resource pack.\nClick ", color: "#c44949" }, \
	{ \
		translate: "arcane_core.internal:util.empty", \
		fallback: "[HERE]", color: "#5991ec", \
		click_event: { \
			action: "open_url", \
			url: "https://modrinth.com/datapack/aracne-core", \
		}, \
		hover_event: { \
			action: "show_text", \
			value: [ \
				{text: "Click to show project on Modrinth."}, \
			] \
		}, \
	}, \
	{translate: "arcane_core.internal:util.empty", fallback: " to download.", color: "#c44949" }, \
]

data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.text_blob[]
