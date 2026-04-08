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

# opencode
fish_add_path /home/surya/.opencode/bin

set -x PATH $PATH /usr/local/go/bin

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# pnpm
set -gx PNPM_HOME "/home/surya/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

alias po='pnpm'
