[[ -f ~/.zshrc ]] && . ~/.zshrc

# Paths
export PATH="${PATH}:/home/$(whoami)/.local/bin"
export XDG_DATA_DIRS="${PATH}:/usr/local/share/:/usr/share/:/var/lib/flatpak/exports/share"
export XDG_CONFIG_HOME="/home/$(whoami)/.config"