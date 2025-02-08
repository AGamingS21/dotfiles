[[ -f ~/.zshrc ]] && . ~/.zshrc

# Paths
export PATH="${PATH}:/home/$(whoami)/.local/bin"
export PATH="${PATH}:/home/$(whoami)/.local/share/flatpak/exports/share"
export PATH="${PATH}:/var/lib/flatpak/exports/bin"
export PATH="${PATH}:~/home/$(whoami)/.local/share/flatpak/exports/bin"