--
-- noncomplete's wezterm configuration
--
local wezterm = require 'wezterm'
return {
    -- Spawn a fish shell in login mode
    default_prog = { '/usr/bin/fish', '-l' },
    font = wezterm.font 'Iosevka Nerd Font',
    font_size = 15,
    color_scheme = "Tangoesque (terminal.sexy)",

    -- Tab bar config
    enable_tab_bar = false,
    use_fancy_tab_bar = true,
    window_frame = {
        -- The font used in the tab bar.
        -- Roboto Bold is the default; this font is bundled
        -- with wezterm.
        -- Whatever font is selected here, it will have the
        -- main font setting appended to it to pick up any
        -- fallback fonts you may have used there.
        font = wezterm.font { family = 'Atkinson Hyperlegible', weight = 'Bold' },

        -- The size of the font in the tab bar.
        -- Default to 10. on Windows but 12.0 on other systems
        font_size = 12.0,

        -- The overall background color of the tab bar when
        -- the window is focused
        active_titlebar_bg = '#333333',

        -- The overall background color of the tab bar when
        -- the window is not focused
        inactive_titlebar_bg = '#333333',
    },
}

