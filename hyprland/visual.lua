hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 3,
		border_size = 1,
		col = {
			active_border = "rgba(170,170,180,0.9)",
			inactive_border = "rgba(30,30,46,0.7)",
		},
		layout = "dwindle",
		allow_tearing = true,
	},
	decoration = {
		rounding = 1,
		blur = { enabled = false },
		shadow = { enabled = false },
	},
	dwindle = {
		preserve_split = true,
		force_split = 2,
	},
	xwayland = { force_zero_scaling = true }
})

hl.curve("ease", { type = "bezier", points = { {0.4,0.02},{0.21,1} } })
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 2,
	bezier = "ease"
})
hl.animation({
	leaf = "workspaces",
	enabled = false
})

