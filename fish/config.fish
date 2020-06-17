# Automatically execute tmux
if status is-interactive
and not set -q TMUX

    # Start fish in $HOME directory
    cd $HOME
    exec tmux
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# Set X Server display to VcXsrv using automatically generated WSL resolv.conf
set -x -U DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

# Set tmux keybind mode to vim
set -x VISUAL vim

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

# have windows handle the default browser
set -x DISPLAY "explorer.exe"

# WSL shortcut aliases
alias explorer="explorer.exe"
alias e="explorer.exe"
alias gsudo="gsudo.exe"
alias powershell="pwsh.exe"
alias pwsh="pwsh.exe"
alias choco="gsudo.exe choco"
