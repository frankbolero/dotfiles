local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.color_scheme = "Catppuccin Frappe"
config.enable_tab_bar = false

config.native_macos_fullscreen_mode = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

config.window_padding = {
	left = 40,
	right = 20,
	top = 20,
	bottom = 20,
}

config.window_background_opacity = 0.95
config.text_background_opacity = 1.0

-- config.window_background_gradient = {
-- Can be "Vertical" or "Horizontal".  Specifies the direction
-- in which the color gradient varies.  The default is "Horizontal",
-- with the gradient going from left-to-right.
-- Linear and Radial gradients are also supported; see the other
-- examples below
-- orientation = "Horizontal",
-- orientation = { Linear = { angle = -45.0 } },

-- Specifies the set of colors that are interpolated in the gradient.
-- Accepts CSS style color specs, from named colors, through rgb
-- strings and more

-- colors = {
-- 	"#303446",
-- 	"#333749",
-- },

-- Instead of specifying `colors`, you can use one of a number of
-- predefined, preset gradients.
-- A list of presets is shown in a section below.
-- preset = "Warm",

-- Specifies the interpolation style to be used.
-- "Linear", "Basis" and "CatmullRom" as supported.
-- The default is "Linear".
-- interpolation = "Linear",

-- How the colors are blended in the gradient.
-- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
-- The default is "Rgb".
-- blend = "Rgb",

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
-- segment_smoothness = 0.0,
-- }

local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

return config
