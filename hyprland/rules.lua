-- [ WORKSPACE RULES ] --

hl.workspace_rule({
	workspace = "1",
	monitor = "HDMI-A-1",
	default_name = "uwu",
	layout = "master"
})

hl.workspace_rule({
	workspace = "2",
	monitor = "HDMI-A-1"
})

-- [ WINDOW RULES ] --

hl.window_rule({
	match = {
		class = "^(org.kde.kcalc)$"
	},
	float = true,
	center = true,
})

hl.window_rule({
	match = {
		class = "^(steam)$",
		title = "negative:^(Steam)$"
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(imv)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(xdg-desktop-portal.*)$" },
	float = true,
	center = true,
	dim_around = true,
})

hl.window_rule({
	match = {
		class = "^(org.telegram.desktop)$",
		title = "^(Media viewer|Просмотр медиа)$"
	},
	float = true,
	opaque = true,
	fullscreen = true,
	workspace = "unset",
})

hl.window_rule({
	match = { class = "qemu" },
	float = true,
	center = true,
	opaque = true,
})

hl.window_rule({
	match = {
		class = "^(org.qbittorrent.qBittorrent)$",
		title = "negative:^(qBittorrent v.*)$"
	},
	float = true,
	center = true,
})

hl.window_rule({
	match = { class = "^(firefox|imv|mpv|vlc|steam_app_.*|Minecraft.*|krita)$" },
	opaque = true,
})

hl.window_rule({
	match = { fullscreen = true },
	opaque = true,
})

hl.window_rule({
	match = { class = "^(Minecraft.*|krita)$" },
	immediate = true,
})

hl.window_rule({
	match = {
		class = "^(krita)$",
		title = "^(Krita)$",
		float = true
	},
	no_focus = true,
})

