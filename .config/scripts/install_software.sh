# apt Repos
## docker
# Add Docker's official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "bookworm") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

## Hashicorp
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com bookworm main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

## vscodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list


## microsoft
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

## Spotify
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo dpkg --add-architecture i386

## Steam
curl -s http://repo.steampowered.com/steam/archive/stable/steam.gpg | sudo tee /usr/share/keyrings/steam.gpg > /dev/null
echo "deb [arch=amd64,i386 signed-by=/usr/share/keyrings/steam.gpg] http://repo.steampowered.com/steam/ stable steam" | sudo tee /etc/apt/sources.list.d/steam.list

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
    lsd \
    brave-browser \
    code \
    codium \
    flatpak \
    spotify-client \
    libreoffice \
    steam-installer \
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
    powershell \
    inotify-tools \
    rofi \
    pavucontrol \
    font-manager \
    jq \
    wlogout \
    network-manager \
    blueman \
    hyprpaper \
    sddm \
    kitty \
    slurp \
    grim \
    swaylock \
    swayidle \
    thunar \
    gvfs-backends \
    smbclient \
    samba \
    gnome-themes-extra \
    cifs-utils \
    cliphist \
    alsa-utils \
    pulseaudio \
    pip3 \
    pipx \
    imagemagick
    

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

# Install Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord 
flatpak install flathub com.bitwarden.desktop
flatpak install flathub org.localsend.localsend_app
flatpak install flathub org.mozilla.Thunderbird



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