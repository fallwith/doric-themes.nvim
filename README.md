# Doric themes

WIP Neovim port of the [Doric
themes](https://github.com/protesilaos/doric-themes) for GNU Emacs.

<table>
  <tr>
    <td><img src="media/light.png" /></td>
    <td><img src="media/dark.png" /></td>
  </tr>
  <tr>
    <td><img src="media/oak.png" /></td>
    <td><img src="media/water.png" /></td>
  </tr>
</table>

## Overview

From the original project:
> The Doric themes use few colours and will appear monochromatic in many
> contexts. They are my most minimalist themes. Styles involve the careful use
> of typographic features and subtleties in colour gradients to establish
> a consistent rhythm.

## Requirements

Neovim >= 0.8.0

## Installation

[vim.pack](https://neovim.io/doc/user/pack/#vim.pack) (Neovim >=0.12)

```lua
vim.pack.add({ "https://github.com/aymenhafeez/doric-themes.nvim" })
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "aymenhafeez/doric-themes.nvim", priority = 1000 }
```

## Usage

Example configuration:

Set a specific variant, for example

```lua
vim.cmd "colorscheme doric-marble"
```

Or use the configuration option to set a light and dark variant:

```lua
require("doric").setup({
  light = "doric-light", -- doric-beach, -cherry, -earth, -jade, -marble, -oak, -siren, -wind
  dark = "doric-water" -- doric-copper, -dark, -fire, -mermaid, -obsidian, -pine, -plum, -valley
})

vim.cmd "colorscheme doric"
```

These will then automatically sync with `vim.o.background`.
