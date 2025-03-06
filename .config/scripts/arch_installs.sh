# Determine what below is pacman, yay or flatpak and add them to the columns below
    # flatpak \
    # spotify-client \
    # libreoffice \
    # steam-installer \
    # ansible \
    # vault \
    # terraform \
    # packer \
    # psmisc \
    # powershell \
    # inotify-tools \
    # pip3 \
    # pipx \
    # dbeaver-ce \
    # evince



# pacman
neofetch
hyprland
waybar
network-manager
network-manager-applet
pauvcontrol
brave
jq
pavucontrol
wl-clipboard
papirus-icon-theme
otf-font-awesome
cliphist
kitty
wofi
nano
neovim
vim
vlc
zsh
zsh-syntax-highlighting
zsh-autosuggestions
blueman
docker
wireshark-qt
nwg-dock-hyprland

# yay
wlogout
dotnet-sdk-bin
visual-studio-code-bin
hyprshot
hyprlock
hypridle
hyprpaper
ttf-cascadia-code-nerd
starship
nwg-look
catppuccin-gtk-theme-mocha


# Make zshell the default Shell
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)

# oh-my-posh
oh-my-posh font install Meslo


# Flatpak config
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord 
flatpak install flathub com.bitwarden.desktop
flatpak install flathub org.localsend.localsend_app
# flatpak install flathub org.mozilla.Thunderbird

# docker config
sudo usermod -aG docker $USER

# dotnet configs
dotnet tool install sqlpackage

## vsconfig
## clone repo and run makefile
vsconfig configure

#Private key

# Audio
sudo alsactl init
sudo alsamixer

# Python packages
pipx install pywall


echo "Reboot PC Now"
