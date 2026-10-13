-- General Settings
--

general = {
    layout = "dwindle",
    allow_tearing = false,
    gaps_workspaces = "$workspaceGaps",
    gaps_in = "$windowGapsIn",
    gaps_out = "$windowGapsOut",
    border_size = "$windowBorderSize",
    ["col.active_border"] = "$activeWindowBorderColour",
    ["col.inactive_border"] = "$inactiveWindowBorderColour",
}

xwayland = {
  force_zero_scaling = true
}
	
windowrulev2 = { "filter nearest, class:^(acs.exe)$" }


-- Laptop panel — main monitor, kept at the layout origin
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@144",
    position = "0x0",
    scale = 1,
})

-- TV — forced to 1080p, placed to the right of the laptop
hl.monitor({
    output = "HDMI-A-2",
    mode = "1920x1080@60",
    position = "1920x0",
    scale = 1,
})

-- Always start workspace 1 on the laptop, regardless of connect order
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", default = true })

-- Dwindle Layout
dwindle = {
    preserve_split = true,
    smart_split = false,
    smart_resizing = true,
}

-- Misc & Debug
misc = {
    vrr = 1,
    animate_manual_resizes = false,
    animate_mouse_windowdragging = false,
    disable_hyprland_logo = true,
    force_default_wallpaper = 0,
        on_focus_under_fullscreen = 2,
        allow_session_lock_restore = true,
        middle_click_paste = false,
        focus_on_activate = true,
        session_lock_xray = true,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        background_color = "rgb(17191f)",
}

debug = {
    error_position = 1,
}

-- Animation Curves
hl.curve("specialWorkSwitch", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("emphasizedAccel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("emphasizedDecel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })

-- Animations
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, bezier = "emphasizedDecel", "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, bezier = "emphasizedAccel", "slide" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 5, bezier = "standard" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "emphasizedDecel" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier ="emphasizedAccel" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, bezier = "standard" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "standard" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "specialWorkSwitch", "slidefadevert 15%" })
hl.animation({ leaf = "fade", enabled = true, speed = 6, bezier = "standard" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 6, bezier = "standard" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "standard" })

-- Keybinds
hl.bind("SUPER + SUPER_L", hl.dsp.global("caelestia shell drawers toggle launcher"), { release = true })


