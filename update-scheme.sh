#!/bin/bash

# Find the most recently modified image in your Wallpapers folder
WALLPAPER=$(ls -t ~/Pictures/Wallpapers/*.{jpg,png,jpeg,webp} 2>/dev/null | head -n 1)

# Fallback if none found
if [ -z "$WALLPAPER" ]; then
    exit 1
fi

# Extract the dominant hex color instantly using ImageMagick
HEX=$(magick "$WALLPAPER" -resize 1x1\! -format "%[hex:u]" info:)

# Write directly into your scheme.current.lua file
cat <<EOF > ~/.config/caelestia/scheme.current.lua
return { 
    primary = "$HEX", 
    secondary = "$HEX", 
    inversePrimary = "$HEX", 
    onPrimary = "1e1e2e", 
    outline = "$HEX", 
    onSurfaceVariant = "a6adc8", 
    surfaceContainer = "1e1e2e" 
}
EOF

# Recompile configs using your actual fish script
~/.config/caelestia/user-config.fish

# Reload Hyprland to apply the new border colors
hyprctl reload
echo "Theme updated successfully with accent: #$HEX"
