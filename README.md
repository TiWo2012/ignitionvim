# ignitionvim 

**this configuration is not intended to be used on windows**

## important

1. If you want to use my nottaker plugin you need to have a `.todo.md` file in your home directory.
1. I am using this config every day for myself to edit code. I use it for a lot
of different langugages like rust, go, c, c++, and more. 

## installation


<details> 
<summary>without updates</summary>

```bash
git clone https://github.com/TiWo2012/ignitionvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
</details>

<details> 
<summary>with updates</summary>

```bash
git clone https://github.com/TiWo2012/ignitionvim.git ~/.config/nvim
```

to get updates you will have to run the following command:

note that you shouldn't change the config because it will break.

```bash
cd ~/.config/nvim
git pull
cd -
```
</details>

after that you can open neovim and run `:Lazy sync` to update and install all the
plugins.

## features

* **good navigational features for window switching**
* **features that you would typicaly find in an IDE for example indentlines, lsp, treesitter, etc.**

## customization

**if you change the config please remove the `.git` direcotory from the `.config/nvim` directory**

- to add adition plugins you can add a lua file to the `lua/plugins` directory.

```lua
    require("custom.<filename without .lua>")
```

the syntax for such a file is:
```lua
return {
    "plugin_autor/plugin_name"
}
```
for more informations on how to add plugins have a look at the documentation for [lazy.nvim](https://github.com/folke/lazy.nvim)

- for changing keymaps you can modify the file `lua/config/mappings.lua`
there you will find the default keymaps for this configuration

## todos:

[ ] make the config a separate repository and make this reepo only load the plugin.
