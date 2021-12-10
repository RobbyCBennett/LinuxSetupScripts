# Todo:
# Remove scrollbar in terminal
# Copy, unzip & move wallpapers
# Set wallpaper
# Allow desktop icons
# Favorite Apps


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
# Enable Desktop Icons
gsettings set org.gnome.desktop.background show-desktop-icons true
# Enable Battery Percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true
# Disable Night Light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
# Disable Hot Corners
gsettings set org.gnome.desktop.interface enable-hot-corners false
# Disable Dim
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
# Change Power Button Action
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'interactive'

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
sudo pamac build keyd-git --no-confirm

# Default Application
# Browser
xdg-settings set default-web-browser brave.desktop

# Keyboard Shortcuts
sudo cp default.cfg /etc/keyd/.
sudo systemctl start keyd # FIX ME
sudo systemctl status keyd
