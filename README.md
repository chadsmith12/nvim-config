# Neovim Config

Repository that holds the config files for my Neovim Config.

You're free to use this config as you wish ane edit as you wish.

## Plugins

* [lazy.nvim](https://github.com/folke/lazy.nvim)
* [nightfox color scheme](https://github.com/EdenEast/nightfox.nvim)
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [Comment.nvim](https://github.com/numToStr/Comment.nvim)
* [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
* [lualine](https://github.com/nvim-lualine/lualine.nvim)
* [whichkey](https://github.com/folke/which-key.nvim)
* [telescope](https://github.com/nvim-telescope/telescope.nvim)
* [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvm-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [Mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)

## Structure of Config

The structure of this config is designed to be simple and organized. For the most part each file
contains the configuration of only certain things that it belongs to. 

* `init.lua` - This is the main entry point of the config. The only thing this file does is load in
the plugin manager from `lua/config/init.lua`. This is where the plugin manager is setup and it takes
care of loading all the plugins.

* `/lua/plugins` - All the plugins are stored in the `plugins` directory. The `init.lua` file takes care of loading
plugins that don't require any configuration at all. From there each plugin gets its own file.

* `/lua/config` - The config directory holds different configuration files for configuring neovim itself.
This file holds the global settings that we are going to apply, the options we will apply, and also some keymaps
that we are setting.
