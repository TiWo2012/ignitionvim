local map = vim.keymap.set

-- better escape
map("i", "jk", "<esc>")
map("i", "jj", "<esc>")

-- better o
-- map("n", "o", "o<esc>")
-- map("n", "O", "O<esc>")

-- window nav
map("n", "<C-h>", "<c-w>h")
map("n", "<C-j>", "<c-w>j")
map("n", "<C-k>", "<c-w>k")
map("n", "<C-l>", "<c-w>l")

-- window resizing using arrowkeys
map("n", "<c-up>", ":resize -2<cr>", { silent = true })
map("n", "<c-down>", ":resize +2<cr>" , { silent = true })
map("n", "<c-left>", ":vertical resize -2<cr>" , { silent = true })
map("n", "<c-right>", ":vertical resize +2<cr>" , { silent = true })

-- new file
map("n", "<leader>n", ":new<cr>")

map("n", "<leader>w", ":wa<cr>")

-- close panes
map("n", "<leader>q", ":q<cr>")

-- undotree
map("n", "<leader>ut", ":UndotreeToggle<cr>")

map("n", "<leader>vs", ":vs<cr>")
map("n", "<leader>hs", ":sp<cr>")

map("n", "<leader>as", ":Autosave toggle<cr>")
