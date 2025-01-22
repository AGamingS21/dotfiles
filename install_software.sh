## apt Repos
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
    lsd

# Todo:
# Customize lsd via config file

# Make zshell the default Shell
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)