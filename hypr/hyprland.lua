---@module 'hl'

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1.33,
})

--##################

--## MY PROGRAMS ###

--##################

local terminal = "alacritty"
local fileManager = "dolphin"
local menu = "tofi-drun"

--################

--## AUTOSTART ###

--################
-- Autostart

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar & helium & hyprpaper & swaync")
	hl.exec_cmd("nm-applet --indicator &")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

--############################

--## ENVIRONMENT VARIABLES ###

--############################

hl.env("XCURSOR_SIZE", 22)
hl.env("HYPRCURSOR_SIZE", 22)
hl.env("HYPRCURSOR_THEME", "Nordzy-cursors-hyprcursor")
hl.env("QT_QPA_PLATFORMTHEME", "kde")

--####################

--## LOOK AND FEEL ###

--####################

-- Refer to https://wiki.hypr.land/Configuring/Variables/

-- https://wiki.hypr.land/Configuring/Variables/#general

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 1,
		border_size = 1,
		-- https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
		-- Set to true enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,
		-- Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
		allow_tearing = false,
		layout = "dwindle",
		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
	},
})

-- https://wiki.hypr.land/Configuring/Variables/#decoration

hl.config({
	decoration = {
		rounding = 5,
		rounding_power = 2,
		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		-- https://wiki.hypr.land/Configuring/Variables/#blur
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
})

-- https://wiki.hypr.land/Configuring/Variables/#animations

-- Curves
hl.curve("easeOutQuint", {
	type = "bezier",
	points = {
		{ 0.23, 1.00 },
		{ 0.32, 1.00 },
	},
})

hl.curve("easeInOutCubic", {
	type = "bezier",
	points = {
		{ 0.65, 0.05 },
		{ 0.36, 1.00 },
	},
})

hl.curve("linear", {
	type = "bezier",
	points = {
		{ 0.00, 0.00 },
		{ 1.00, 1.00 },
	},
})

hl.curve("almostLinear", {
	type = "bezier",
	points = {
		{ 0.50, 0.50 },
		{ 0.75, 1.00 },
	},
})

hl.curve("quick", {
	type = "bezier",
	points = {
		{ 0.15, 0.00 },
		{ 0.10, 1.00 },
	},
})

-- Animations
hl.animation({
	leaf = "global",
	enabled = true,
	speed = 10,
	bezier = "default",
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 5.39,
	bezier = "easeOutQuint",
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 4.79,
	bezier = "easeOutQuint",
})

hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 4.10,
	bezier = "easeOutQuint",
	style = "popin 87%",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 1.49,
	bezier = "linear",
	style = "popin 87%",
})

hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 1.73,
	bezier = "almostLinear",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 1.46,
	bezier = "almostLinear",
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 3.03,
	bezier = "quick",
})

hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 3.81,
	bezier = "easeOutQuint",
})

hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 4.00,
	bezier = "easeOutQuint",
	style = "fade",
})

hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 1.50,
	bezier = "linear",
	style = "fade",
})

hl.animation({
	leaf = "fadeLayersIn",
	enabled = true,
	speed = 1.79,
	bezier = "almostLinear",
})

hl.animation({
	leaf = "fadeLayersOut",
	enabled = true,
	speed = 1.39,
	bezier = "almostLinear",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 1.94,
	bezier = "almostLinear",
	style = "fade",
})

hl.animation({
	leaf = "workspacesIn",
	enabled = true,
	speed = 1.21,
	bezier = "almostLinear",
	style = "fade",
})

hl.animation({
	leaf = "workspacesOut",
	enabled = true,
	speed = 1.94,
	bezier = "almostLinear",
	style = "fade",
})

hl.animation({
	leaf = "zoomFactor",
	enabled = true,
	speed = 7,
	bezier = "quick",
})

hl.config({
	dwindle = {
		preserve_split = true,
		-- You probably want this
	},
})

-- See https://wiki.hypr.land/Configuring/Master-Layout/ for more

hl.config({
	master = {
		new_status = "master",
	},
})

-- https://wiki.hypr.land/Configuring/Variables/#misc

hl.config({
	misc = {
		force_default_wallpaper = -1,
		-- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false,
		-- If true disables the random hyprland logo / anime girl background. :(
	},
})

--############

--## INPUT ###

--############

-- https://wiki.hypr.land/Configuring/Variables/#input

hl.config({
	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = 0,
		-- -1.0 - 1.0, 0 means no modification.
		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

--##################

--## KEYBINDINGS ###

--##################

-- See https://wiki.hypr.land/Configuring/Keywords/

local mainMod = "SUPER"
local myMod = "ALT+ CTRL"

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more

hl.bind(myMod .. " + " .. "T", hl.dsp.exec_cmd(terminal))

hl.bind(mainMod .. " + " .. "C", hl.dsp.window.close())

hl.bind(
	mainMod .. " + " .. "X",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit")
)

hl.bind(mainMod .. " + " .. "F", hl.dsp.exec_cmd(fileManager))

hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "M", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + " .. "P", hl.dsp.window.pseudo())

-- dwindle

hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("toggle-motivation.sh"))

hl.bind(myMod .. " + " .. "F", hl.dsp.window.fullscreen())

hl.bind(myMod .. " + " .. "R", hl.dsp.exec_cmd("killall waybar && waybar"))

-- Move focus with mainMod + arrow keys

hl.bind(mainMod .. " + " .. "h", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + " .. "l", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + " .. "k", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + " .. "j", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
	local key = i == 10 and 0 or i

	hl.bind(myMod .. " + " .. key, hl.dsp.focus({ workspace = i }))

	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m output"))

hl.bind(myMod .. " + " .. "c", hl.dsp.exec_cmd("swaync-client -C"))

-- Example special workspace (scratchpad)

hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic"))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true })

hl.bind("XF86PowerOff", hl.dsp.exec_cmd("wlogout"))

-- Requires playerctl
local media = {
	XF86AudioNext = "playerctl next",
	XF86AudioPrev = "playerctl previous",
	XF86AudioPlay = "playerctl play-pause",
	XF86AudioPause = "playerctl play-pause",
}

for key, cmd in pairs(media) do
	hl.bind(key, hl.dsp.exec_cmd(cmd), { locked = true })
end

--#############################

--## WINDOWS AND WORKSPACES ###

--#############################

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more

-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrules that are useful

hl.window_rule({
	name = "suppress-maximize-events",
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Hyprland-run windowrule

hl.window_rule({
	name = "move-hyprland-run",
	match = {
		class = "hyprland-run",
	},
	move = { 20, "monitor_h-120" },
	float = true,
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

hl.window_rule({
	name = "dont-float-godot",
	match = {
		class = "Godot",
	},
	tile = true,
})
