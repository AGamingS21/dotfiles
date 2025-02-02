# apt Repos
## docker
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

## VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg


## dotnet 9
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb


## Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Install Apt software
sudo apt-get update && \
sudo apt install -y \
    dotnet-sdk-9.0 \
    zsh \
    zsh-syntax-highlighting \
    zsh-autosuggestions \
    oh-my-posh \
    lsd \
    brave-browser \
    code \
    codium \
    flatpak \
    spotify \
    Thunderbird \
    libreoffice \
    steam \
    ansible \
    vault \
    terraform \
    packer \
    vim \
    neovim \
    wireshark \
    vlc \
    lsd \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin \
    nano \
    git \
    unzip \
    waybar \
    psmisc \
    pwsh \
    inotify-tools \
    rofi \
    pavucontrol \
    font-manager \
    jq \
    wlogout \
    network-manager \
    blueman-manager \
    hyprpaper \
    sddm \
    kitty \
    slurp \
    grim
    

# Todo:
# Customize lsd via config file

# Make zshell the default Shell
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)

# oh-my-posh

curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
# Install font
oh-my-posh font install Meslo


# Flatpak config
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
## software in hyprland for visual way of reading?

# Install Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord 
flatpak install bitwarden
flatpak install localsend
# Get the App IMages for ml4l calendar



# dotnet configs
dotnet tool install sqlpackage

## vsconfig
## clone repo and run makefile
vsconfig configure

#Private key

# Audio
sudo apt install alsa-utils
sudo apt install pulseaudio
sudo alsactl init
sudo alsamixer


echo "Reboot PC Now"