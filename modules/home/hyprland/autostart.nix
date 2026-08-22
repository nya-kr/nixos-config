{ isHighPower, isLaptop, lib, ... } : {
  wayland.windowManager.hyprland.settings = {

    # Autostart
    exec-once = [
      # Setting variables globally
      "systemctl --user import-environment"
      "systemctl --user start hyprpolkitagent"
      "dbus-update-activation-environment --systemd"
      "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"

      # Set startup apps
      "pidof hyprlock || hyprlock"
      "sleep 1 && waybar"
      "nm-applet"
      "blueman-applet"
      "elephant"
      "walker --gapplication-service"
      "wl-clip-persist --clipboard regular"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      # "wl-copy" # Might clear the clipboard history on boot
      "my-rwall -n 'cat waves'"
      "cd ~/nixos-config && git fetch"
    ] ++ lib.optionals isHighPower [
      "openrgb --startminimized -b 0 -m direct"
    ] ++ lib.optionals isLaptop [
      "poweralertd"
    ];
  };
}
