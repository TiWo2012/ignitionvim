# ignitionvim 

A simple, lightweight Neovim configuration that provides the essential functionality to get you started with nvim for c/c++ development.
easy to set up and use. close to vanilla nvim experience. inspired by Astrovim and nvChad.

every thing in the repo are just my personal configs but you can send me PR and Isuess if someting doesn't work for you.
I have no problem with it.

## inportant

1. the mouse is disabled so you can only use the keyboard.
1. you must have a `.todo.md` file in your home directory.
1. this config is not for windows. it will only work on unix based systems(macos and linux)

## Features

- **Streamlined Navigation**: Includes key mappings and plugins for efficient file navigation and buffer management.
- **Sensible Defaults**: Applies a set of sensible default settings to enhance the Neovim experience.
- **Customizable**: You can easily modify the configuration to suit your preferences and needs.

## Installation

1. Clone this repository to your Neovim configuration directory (typically `~/.config/nvim/` for unix based systems(macos and linux)):

   ```bash
   git clone https://github.com/TiWo2012/ignitionvim.git ~/.config/nvim
   rm -rf ~/.config/nvim/.git
   ```

3. Launch Neovim, and the configuration will be automatically loaded.

## Configuration

This configuration is designed to be minimal and easy to customize. You can modify the settings and add/remove plugins as needed to suit your preferences.

The main configuration files are located at `~/.config/nvim/lua`. You can edit those files to make changes to the configuration.

For the default options you can have a look at the file `.config/nvim/lua/options.lua`

## Mappings

I have included [which-key](https://github.com/folke/which-key.nvim) for key mappings. 
general mappings can be found under `.config/nvim/lua/keymaps.lua` and the ones for plugins
can be found in the `.config/nvim/lua/plugins/<file wich contains the plugin>.lua`

## Plugins

This configuration includes the following and more plugins:

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)/[NVimTree](https://github.com/nvim-tree/nvim-tree.lua) - File explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy file finder

## Code autocompletion

This configuration is aimed towoards c/c++ development. 
don't forget to install llvm. this config only works on unix based systems.

- [clangd](https://clangd.llvm.org/) - C/C++ language server
- [zerolsp](https://github.com/zerolsp/zerolsp) - tools for language servers
- [windsurf](https://github.com/Exafunction/codeium) - ai based code completion like github copilot
note that codium needs a registration but is free.
