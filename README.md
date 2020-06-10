# dotfiles

Dotfiles are managed using [Dotbot](https://github.com/anishathalye/dotbot). Information on how to modify dotfile management can be found on the dotbot repo.

## Features

### Fish

The dotfiles are configured to be used with the [fish](https://github.com/fish-shell/fish-shell) shell using the [pure](https://github.com/rafaelrinaldi/pure) theme. Fish [plugins](./fish/fishfile) are managed using [fisher](https://github.com/jorgebucaran/fisher).

![fish shell](https://i.imgur.com/MPWUYMo.png)

### Neovim

Neovim replaces normal vim due the the increased performance neovim provides as well as the current direction of the neovim project as opposed to original vim. Plugins are managed using [vim-plug](https://github.com/junegunn/vim-plug).

![neovim](https://i.imgur.com/QVVUM1X.png)

### Tmux

Tmux is used to manage multiple panes easily. To make it interact more smoothly with neovim, vim keybinds are enabled through the Tmux config.

![tmux](https://i.imgur.com/YfARaZk.png)

### WSL2 Integration

#### Clipboard

Intended to be used with WSL2 with VcXsrv running on the host. The display will automatically be mapped to VcXsrv on the host without having to set the host manually each time it changes in WSL. If VcXsrv is running, the `xsel` command is bound to the windows clipboard. `xsel` is also bound the the vim buffer, so any value copied to the clipboard is available in vim using the hotkeys and anything yanked from vim is available on the windows clipboard.

```
# Copy "Hello world" to the Windows clipboard
echo Hello world | xsel -i

# Print the Windows clipboard to the command line
xsel -o | cat
```

#### Fingerprint Authentication

Instead of typing the user password to authenticate when using commands that require root, a prompt for a finger print is used and the user is authenticated using the built in fingerprint scanner. This is done using [WSL Hello sudo](https://github.com/nullpo-head/WSL-Hello-sudo). Instructions for installation can be found on the repo page.

## Installation

You may be prompted multiple times for the user password. Also, to install vim plugins, vim is opened by the script. Once all plugins have been installed, just close vim and the installation will continue. Once complete, restart the terminal for everything to take effect.

**NOTE**: You CANNOT simply run `exec $(which fish)`. A full restart of the terminal is required.

```bash
git clone --recurse-submodules git@github.com:link00000000/dotfiles $HOME/.dotfiles &&\
cd $HOME/.dotfiles &&\
./install
```

## Tips

### Windows hotkeys

Personally, I like to have my terminal bound to `Win + T`. By default, Windows does not have support for custom global hotkeys. A workaround is to install [PowerToys](https://github.com/microsoft/PowerToys). PowerToys supports remapping certain keyboard hotkeys to others. For example, pinning the terminal to the taskbar at location three and mapping `Win + T` to `Win + Shift + 3` will open a new instance of the terminal when `Win + T` is pressed.

### Weird glyphs

Some of the glyphs will be missing when using a regular font. This is because some of the fish and vim plugins require a patched [Nerd Font](https://www.nerdfonts.com/) to display correctly. Prepatched Nerd Fonts can be downloaded and it is possible to manually patch any font.

### VSCode

VSCode settings and extensions are synced using the [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) VSCode extension. All settings are stored in a [GitHub Gist](https://gist.github.com/link00000000/5a56bca84e06cb214365af177bbda608).
