# Determine what below is pacman, yay or flatpak and add them to the columns below
    # dotnet-sdk-9.0 \
    # zsh \
    # zsh-syntax-highlighting \
    # zsh-autosuggestions \
    # lsd \
    # brave-browser \
    # flatpak \
    # spotify-client \
    # libreoffice \
    # steam-installer \
    # ansible \
    # vault \
    # terraform \
    # packer \
    # vim \
    # neovim \
    # wireshark \
    # vlc \
    # lsd \
    # docker-ce \
    # docker-ce-cli \
    # containerd.io \
    # docker-buildx-plugin \
    # docker-compose-plugin \
    # nano \
    # git \
    # unzip \
    # waybar \
    # psmisc \
    # powershell \
    # inotify-tools \
    # rofi \
    # pavucontrol \
    # jq \
    # network-manager \
    # blueman \
    # hyprpaper \
    # kitty \
    # cliphist \
    # pip3 \
    # pipx \
    # nwg-look \
    # papirus-icon-theme \
    # evolution \
    # dbeaver-ce \
    # evince



# pacman
neofetch
hyprland
waybar
network-manager-applet
pauvcontrol
brave
jq
wl-clipboard

# yay
wlogout
dotnet-sdk-bin
visual-studio-code-bin
oh-my-posh
hyprshot
hyprlock
hypridle


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
