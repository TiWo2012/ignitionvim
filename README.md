# ignitionvim 

A simple, lightweight Neovim configuration that provides the essential functionality to get you started.

## Features

- **Minimal Setup**: This configuration focuses on providing only the core features and plugins needed for a productive Neovim experience for c/c++.
- **Streamlined Navigation**: Includes key mappings and plugins for efficient file navigation and buffer management.
- **Sensible Defaults**: Applies a set of sensible default settings to enhance the Neovim experience.
- **Customizable**: You can easily modify the configuration to suit your preferences and needs.

## Installation

1. Clone this repository to your Neovim configuration directory (typically `~/.config/nvim/`):

   ```
   git clone https://github.com/your-username/minimal-neovim-config.git ~/.config/nvim
   rm -rf ~/.config/nvim/.git
   ```

3. Launch Neovim, and the configuration will be automatically loaded.

## Configuration

This configuration is designed to be minimal and easy to customize. You can modify the settings and add/remove plugins as needed to suit your preferences.

The main configuration file is located at `~/.config/nvim/lua`. You can edit this file to make changes to the configuration.

## Key Mappings

- `<leader>` is set to the `<space>` key
- `<leader>e` toggles the file explorer
- `<leader>ff` opens the fuzzy file finder
- `<leader>q` closes the current buffer

## Plugins

This configuration includes the following plugins:

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim] - File explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy file finder

## Contributing

If you have any suggestions or improvements, feel free to open an issue or submit a pull request.
