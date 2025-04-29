local o = vim.opt
local c = vim.cmd

o.guicursor = 'i:block'

-- colors
o.colorcolumn = '80'

-- line numbers
o.number = false
o.relativenumber = true

-- cursor
o.cursorline = true
o.cursorcolumn = true

-- turn on syntax higlighting from vim
o.syntax = 'on'

-- scrolling
o.scrolloff = 8

-- undo speciffic stuff
o.swapfile = false
o.undodir = '/home/timow/.vim/backup'
o.undofile = false
o.undoreload = 10000

-- tabs
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- clipboard
o.clipboard = 'unnamedplus'

-- warp
o.wrap = false

o.background = 'dark'

o.updatetime = 50

vim.diagnostic.config({
  virtual_text = true
})

-- change higlighting
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#F9936A" })
vim.api.nvim_set_hl(0, "LineNR", { fg = "#F9936A" })
vim.api.nvim_set_hl(0, "line", { fg = "#F9936A" })
