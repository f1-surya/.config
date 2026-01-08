source /usr/share/cachyos-fish-config/cachyos-config.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -gx PATH $HOME/.local/share/nvm/v24.12.0/bin $PATH

starship init fish | source

function fish_prompt
    starship prompt
end

set -g fish_color_autosuggestion brblack
