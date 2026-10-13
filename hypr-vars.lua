local scheme = require("scheme.current")

return {
    -- Apps
    terminal = "foot",
    browser = "zen-browser",
    editor = "codium",
    fileExplorer = "thunar",

    -- Accent & Theme
    accent = scheme.primary.hex,

    -- Touchpad & Gestures
    touchpadDisableTyping = true,
    touchpadScrollFactor = 0.3,
    workspaceSwipeFingers = 4,
    gestureFingers = 3,
    gestureFingersMore = 4,

    -- Blur
    blurEnabled = true,
    blurSpecialWs = false,
    blurPopups = true,
    blurInputMethods = true,
    blurSize = 8,
    blurPasses = 2,
    blurXray = false,

    -- Shadow
    shadowEnabled = true,
    shadowRange = 20,
    shadowRenderPower = 3,
    shadowColour = "rgba(0d0e12d4)",

    -- Gaps
    workspaceGaps = 20,
    windowGapsIn = 5,
    windowGapsOut = 10,
    singleWindowGapsOut = 20,

    -- Window styling
    windowOpacity = 0.95,
    windowRounding = 15,
    windowBorderSize = 1,
    activeWindowBorderColour = scheme.primary.hex,
    inactiveWindowBorderColour = "rgba(a9abb511)",

    -- Misc
    volumeStep = 10,
    cursorTheme = "sweet-cursors",
    cursorSize = 24,

    -- Keybind Variables
    kbMoveWinToWs = "SUPER + ALT",
    kbMoveWinToWsGroup = "CTRL + SUPER + ALT",
    kbGoToWs = "SUPER",
    kbGoToWsGroup = "CTRL + SUPER",
    kbNextWs = "CTRL + SUPER + right",
    kbPrevWs = "CTRL + SUPER + left",
    kbToggleSpecialWs = "SUPER + S",
    kbWindowGroupCycleNext = "ALT + Tab",
    kbWindowGroupCyclePrev = "SHIFT + ALT + Tab",
    kbUngroup = "SUPER + U",
    kbToggleGroup = "SUPER + Comma",
    kbMoveWindow = "SUPER + Z",
    kbResizeWindow = "SUPER + X",
    kbWindowPip = "SUPER + ALT + Backslash",
    kbPinWindow = "SUPER + P",
    kbWindowFullscreen = "SUPER + F",
    kbWindowBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWindowFloating = "SUPER + ALT + Space",
    kbCloseWindow = "SUPER + Q",
    kbSystemMonitor = "CTRL + SHIFT + Escape",
    kbMusic = "SUPER + M",
    kbCommunication = "SUPER + D",
    kbTodo = "SUPER + R",
    kbTerminal = "SUPER + T",
    kbBrowser = "SUPER + W",
    kbEditor = "SUPER + C",
    kbFileExplorer = "SUPER + E",
    kbSession = "CTRL + ALT + Delete",
    kbShowSidebar = "SUPER + N",
    kbClearNotifs = "CTRL + ALT + C",
    kbShowPanels = "SUPER + K",
    kbLock = "SUPER + L",
    kbRestoreLock = "SUPER + ALT + L",
}
