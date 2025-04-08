-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Argonaut'
-- config.color_scheme = 'Darcula'
config.color_scheme = 'Grape'
-- config.color_scheme = 'MaterialDark'
-- config.color_scheme = 'MaterialDesignColors'
-- config.color_scheme = 'Mirage'
-- config.color_scheme = 'Vs Code Dark+ (Gogh)'
config.font_size = 12
config.window_background_opacity = 0.9
-- config.window_decorations = 'RESIZE'
config.initial_rows = 25
config.initial_cols = 100
config.scrollback_lines = 5000
config.use_dead_keys = false
config.use_fancy_tab_bar = true
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = false
config.front_end = 'WebGpu'

-- and finally, return the configuration to wezterm
return config
