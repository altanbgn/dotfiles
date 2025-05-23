local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.font = wezterm.font {
    family = 'FiraCode Nerd Font Mono',
    weight = 'Medium',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.font_size = 6.5

config.color_scheme = 'GruvboxDarkHard'

config.window_background_opacity = 0.8
config.enable_tab_bar = false
config.use_fancy_tab_bar = false

return config
