local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- colour scheme setting.
config.color_scheme = "Dracula (Gogh)"
config.window_background_gradient = {
	-- Can be "Vertical" or "Horizontal".  Specifies the direction
	-- in which the color gradient varies.  The default is "Horizontal",
	-- with the gradient going from left-to-right.
	-- Linear and Radial gradients are also supported; see the other
	-- examples below
	orientation = "Vertical",

	-- Specifies the set of colors that are interpolated in the gradient.
	-- Accepts CSS style color specs, from named colors, through rgb
	-- strings and more
	colors = {
		"#0f0c29",
		"#302b63",
		"#24243e",
	},

	-- Instead of specifying `colors`, you can use one of a number of
	-- predefined, preset gradients.
	-- A list of presets is shown in a section below.
	-- preset = "Wa",

	-- Specifies the interpolation style to be used.
	-- "Linear", "Basis" and "CatmullRom" as supported.
	-- The default is "Linear".
	interpolation = "Linear",

	-- How the colors are blended in the gradient.
	-- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
	-- The default is "Rgb".
	blend = "Rgb",

	-- To avoid vertical color banding for horizontal gradients, the
	-- gradient position is randomly shifted by up to the `noise` value
	-- for each pixel.
	-- Smaller values, or 0, will make bands more prominent.
	-- The default value is 64 which gives decent looking results
	-- on a retina macbook pro display.
	-- noise = 64,

	-- By default, the gradient smoothly transitions between the colors.
	-- You can adjust the sharpness by specifying the segment_size and
	-- segment_smoothness parameters.
	-- segment_size configures how many segments are present.
	-- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
	-- 1.0 is a soft edge.

	-- segment_size = 11,
	-- segment_smoothness = 1.0,
}

-- Background transparency.
config.window_background_opacity = 0.65
-- config.macos_window_background_blur = 10

-- Set shortcut keys.
local act = wezterm.action
config.keys = {

	-- Copy selected text to clipboard with `Cmd+c`
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	-- Switch full screen as `Alt(Opt)+Shift+F`
	{
		key = "f",
		mods = "SHIFT|META",
		action = wezterm.action.ToggleFullScreen,
	},
	-- Open a new tab with `Ctrl+Shift+t`
	{
		key = "t",
		mods = "SHIFT|CTRL",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	-- Open a new horizontal pane with `Ctrl+Shift+h`
	{
		key = "h",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Open a new vertical pane with `Ctrl+Shift+v`
	{
		key = "v",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- Font Configurations.
config.font = wezterm.font("MesloLGS NF", { weight = "Bold", stretch = "Normal", italic = false })
config.font_size = 16

-- Default cwd settings
config.default_cwd = "/Users/sanghyunlee/src/remote/"

return config
