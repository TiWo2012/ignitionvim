local o = vim.opt

-- colors
o.colorcolumn='80'

-- line numbers
o.number=true
o.relativenumber=true

-- cursor
o.cursorline=true
o.cursorcolumn=true

-- turn on syntax higlighting from vim
o.syntax='on'

-- scrolling
o.scrolloff=8

-- undo speciffic stuff
o.swapfile=false
o.undodir='/home/timow/.vim/backup'
o.undofile=true
o.undoreload=10000

-- tabs
o.tabstop=2
o.softtabstop=2
o.shiftwidth=2
o.expandtab=true
o.smartindent=true

-- clipboard
o.clipboard='unnamedplus'

-- warp
o.wrap=false

vim.cmd('colorscheme tokyonight-moon')
