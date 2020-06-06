# dotfiles

Dotfiles are managed using [Dotbot](https://github.com/anishathalye/dotbot). Information on how to modify dotfile management can be found on the dotbot repo.

Intended to be used with WSL2 with VcXsrv running on the host. If VcXsrv is running, the `xsel` command is bound to the windows clipboard. `xsel` is also bound the the vim buffer, so any value copied to the clipboard is available in vim using the hotkeys and anything yanked from vim is available on the windows clipboard.

```
# Copy "Hello world" to the Windows clipboard
echo Hello world | xsel -i

# Print the Windows clipboard to the command line
xsel -o | cat
```

## Installation

You may be prompted multiple times for the user password. Also, to install vim plugins, vim is opened by the script. Once all plugins have been installed, just close vim and the installation will continue. Once complete, restart the terminal for everything to take effect.

**NOTE**: You CANNOT simply run `exec $(which fish)`. A full restart of the terminal is required.

```bash
git clone --recurse-submodules git@github.com:link00000000/dotfiles $HOME/.dotfiles &&\
cd $HOME/.dotfiles &&\
./install
```

### VSCode

VSCode settings and extensions are synced using the [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) VSCode extension. All settings are stored in a [GitHub Gist](https://gist.github.com/link00000000/5a56bca84e06cb214365af177bbda608).
