-- [ SYSTEM CONTROL AREA ] --

hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("~/.config/hypr/power-menu.sh"))
hl.bind("SUPER + SHIFT + ALT", hl.dsp.exit())

-- [ APPLICATIONS LAUNCH CONTROL AREA ] --

hl.bind("SUPER + D", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"))
hl.bind("SUPER + Space", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("thunar"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("kcalc"))

-- [ AUDIO CONTROL AREA ] --

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, locked = true } )
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true, locked = true } )
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true } )

-- [ CLIPBOARD CONTROL AREA ] --

hl.bind("SUPER + V", hl.dsp.exec_cmd([[answer=$(cliphist list | rofi -dmenu) && cliphist decode "$answer" | wl-copy]]))

-- [ SCREENSHOTS CONTROL AREA ] --

-- Region -> Edit
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --freeze --raw | swappy -f -"))
-- Window -> Edit
hl.bind("ALT + PRINT", hl.dsp.exec_cmd("hyprshot -m window --clipboard-only --raw | swappy -f -"))
-- Monitor -> Clipboard
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only"))

-- [ WINDOW STATE CONTROL AREA ] --

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + ALT + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- [ WINDOW & WORKSPACES TRANSFORM CONTROL AREA ] --

local directions = {
	left = { "left", "h" },
	down = { "down", "j" },
	up = { "up", "k" },
	right = { "right", "l" },
}

-- Workspace focusing & window moving, using keys 1-8
for i = 1, 8 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Window focusing & moving
for dir, keys in pairs(directions) do
	for _, key in ipairs(keys) do
		hl.bind("SUPER + " .. key, hl.dsp.focus({ direction = dir }))
		hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
	end
end

-- Workspace moving
hl.bind("SUPER + CTRL + H", hl.dsp.workspace.move({ monitor = "HDMI-A-1" }))
hl.bind("SUPER + CTRL + L", hl.dsp.workspace.move({ monitor = "DP-2" }))

-- Window resizing, using arrows/vim keys
local function bind_resize(keys, values)
	for _, key in ipairs(keys) do
		hl.bind("SUPER + ALT + " .. key, hl.dsp.window.resize(values), { repeating = true })
	end
end
bind_resize({"left", "h"},	{x = -20, y = 0, relative = true})
bind_resize({"right", "l"}, {x = 20, y = 0, relative = true})
bind_resize({"up", "k"},	 {x = 0, y = -20, relative = true})
bind_resize({"down", "j"},	 {x = 0, y = 20, relative = true})

-- Window control, using mouse
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true })
