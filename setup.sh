# Todo:
# Show Applications tweaks
# Keyboard shortcuts


# Git
git config --global user.name "Robby Bennett"
git config --global user.email robbycbennett@gmail.com
git config --global core.editor vim
git config --global pull.rebase false

# SSH
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""

# Settings
# Change Theme
gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-sea'
gsettings set org.gnome.desktop.interface cursor-theme 'xcursor-breeze-snow'
# Change Clock Format
gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-weekday true
# Enable Network Time Protocol
timedatectl set-ntp true
# Enable Battery Percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true
# Enable Automatically Delete Trash & Temporary Files
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy old-files-age 7
# Disable Night Light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
# Disable Hot Corners
gsettings set org.gnome.desktop.interface enable-hot-corners false
# Disable Dim
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
# Disable Notifications in Lock Screen
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
# Disable Workspaces
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
# Disable Automatic Screen Lock
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.desktop.screensaver lock-enabled false
# Disable Automatic Dim
gsettings set org.gnome.settings-daemon.plugins.power power-saver-profile-on-low-battery false
# Disable Automatic Suspend
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
# Change Power Button Action
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'interactive'
# Change Terminal Profile Settings
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1}
setting=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/
gsettings set $setting audible-bell false
gsettings set $setting cursor-shape 'ibeam'
gsettings set $setting scrollbar-policy 'never'

# Extensions
# Enable Desktop Icons NG (DING)
gnome-extensions enable ding@rastersoft.com
gsettings set org.gnome.shell.extensions.ding icon-size 'small'
gsettings set org.gnome.shell.extensions.ding show-drop-place false
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.shell.extensions.ding show-trash false
# Disable Pamac Updates Indicator
gnome-extensions disable pamac-updates@manjaro.org
# Disable AppIndicator and KStatusNotifierItem Support
gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
# Disable Dash to Dock
gnome-extensions disable dash-to-dock@micxgx.gmail.com
# Enable Dash to Panel
gnome-extensions enable dash-to-panel@jderose9.github.com
gsettings set org.gnome.shell.extensions.dash-to-panel animate-app-switch true
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover false
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-extent '{"RIPPLE": 4, "PLANK": 4, "SIMPLE": 1}'
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-margin 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-padding 4
gsettings set org.gnome.shell.extensions.dash-to-panel click-action 'CYCLE-MIN'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-position 'TOP'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-focused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-unfocused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight false
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps false
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-size 14
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-weight 'inherit'
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-max-width 0
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-underline-unfocused true
gsettings set org.gnome.shell.extensions.dash-to-panel hide-overview-on-startup false
gsettings set org.gnome.shell.extensions.dash-to-panel hotkeys-overlay-combo 'TEMPORARILY'
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide false
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-hide-from-windows false
gsettings set org.gnome.shell.extensions.dash-to-panel isolate-monitors false
gsettings set org.gnome.shell.extensions.dash-to-panel isolate-workspaces false
gsettings set org.gnome.shell.extensions.dash-to-panel leftbox-padding -1
gsettings set org.gnome.shell.extensions.dash-to-panel leftbox-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel middle-click-action 'LAUNCH'
gsettings set org.gnome.shell.extensions.dash-to-panel overview-click-to-exit false
gsettings set org.gnome.shell.extensions.dash-to-panel panel-anchors '{"0":"MIDDLE"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions '{"0":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"dateMenu","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-lengths '{"0":100}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-positions '{"0":"TOP"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-sizes '{"0":48}'
gsettings set org.gnome.shell.extensions.dash-to-panel peek-mode true
gsettings set org.gnome.shell.extensions.dash-to-panel preview-middle-click-close true
gsettings set org.gnome.shell.extensions.dash-to-panel preview-use-custom-opacity false
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-icon-action 'NOTHING'
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-panel-action 'NOTHING'
gsettings set org.gnome.shell.extensions.dash-to-panel secondarymenu-contains-showdetails true
gsettings set org.gnome.shell.extensions.dash-to-panel shift-click-action 'MINIMIZE'
gsettings set org.gnome.shell.extensions.dash-to-panel shift-middle-click-action 'LAUNCH'
gsettings set org.gnome.shell.extensions.dash-to-panel show-appmenu false
gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites false
gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites-all-monitors true
gsettings set org.gnome.shell.extensions.dash-to-panel show-tooltip true
gsettings set org.gnome.shell.extensions.dash-to-panel show-window-previews true
gsettings set org.gnome.shell.extensions.dash-to-panel status-icon-padding 8
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-force-hotcorner false
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-dash false
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-top-panel false
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-panelbtn-click-only false
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-bg false
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-gradient false
gsettings set org.gnome.shell.extensions.dash-to-panel tray-padding 2
gsettings set org.gnome.shell.extensions.dash-to-panel tray-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-fixed-x false
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-fixed-y true
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-padding 8
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-show-title false
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-size 180
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-position 'TOP'

# Uninstallation
# User Apps
sudo pacman -R firefox-gnome-theme-maia firefox --noconfirm
sudo pacman -R manjaro-gnome-tour manjaro-hello --noconfirm

# Installation
# System Update
sudo pacman -Syu
# User Apps
sudo pacman -S brave-browser discord --noconfirm
# Programming - General
sudo pacman -S make vim vscode --noconfirm
# Programming - Python
sudo pacman -S python python-pip --noconfirm
# Programming - Node
sudo pacman -S nodejs npm --noconfirm
# Programming - React Native
sudo npm install -g expo-cli
# Keyboard Shortcuts
yes | sudo pamac build keyd-git

# Default Application
# Browser
xdg-settings set default-web-browser brave.desktop

# Keyboard Shortcuts: Gnome
gsettings set org.gnome.desktop.wm.keybindings switch-windows '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward '[]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows '["<Alt>Tab"]'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward '["<Shift><Alt>Tab"]'
# Keyboard Shortcuts: keyd
sudo cp default.cfg /etc/keyd/.
sudo systemctl start keyd # FIX ME
sudo systemctl status keyd
