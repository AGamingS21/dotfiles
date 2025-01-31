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



## dotnet 9
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

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
    git
    

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
flatpak install com.discordapp.Discord 
flatpak install bitwarden
flatpak install localsend

# dotnet configs
dotnet tool install sqlpackage

#Private key