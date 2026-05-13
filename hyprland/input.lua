hl.config({
	input = {
		kb_layout = "us,ru",
		kb_options = "grp:alt_shift_toggle",
		follow_mouse = 2,
	},
	cursor = {
		no_warps = true
	}
})
hl.device({
	name = "logitech-g502-hero-gaming-mouse",
	accel_profile = "flat",
	sensitivity = -0.35,
})
hl.device({
	name = "wacom-one-by-wacom-m-pen",
	output = "HDMI-A-1",
	left_handed = true,
	active_area_size = {216, 121.5},
})
