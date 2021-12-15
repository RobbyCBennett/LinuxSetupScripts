# Todo:
# Set wallpaper
# Allow desktop icons
# Favorite apps
# Automatic date & time (ntp)


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

# Keyboard Shortcuts
sudo cp default.cfg /etc/keyd/.
sudo systemctl start keyd # FIX ME
sudo systemctl status keyd
