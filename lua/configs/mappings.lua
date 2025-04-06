-- better escape
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("t", "jk", "<esc>")
vim.keymap.set("t", "jj", "<esc>")

-- better o
-- vim.keymap.set("n", "o", "o<esc>")
-- vim.keymap.set("n", "O", "O<esc>")

-- window nav
vim.keymap.set("n", "<leader>h", "<c-w>h", { silent = true })
vim.keymap.set("n", "<leader>j", "<c-w>j", { silent = true })
vim.keymap.set("n", "<leader>k", "<c-w>k", { silent = true })
vim.keymap.set("n", "<leader>l", "<c-w>l", { silent = true })

-- window resizing using arrowkeys
vim.keymap.set("n", "<c-up>", ":resize -2<cr>", { silent = true })
vim.keymap.set("n", "<c-down>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<c-left>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<c-right>", ":vertical resize +2<cr>", { silent = true })

-- new file
vim.keymap.set("n", "<leader>n", ":new<cr>")

vim.keymap.set("n", "<leader>w", ":wa<cr>")

-- close panes
vim.keymap.set("n", "<leader>q", ":q<cr>")

-- undotree
vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<cr>")

vim.keymap.set("n", "<leader>vs", ":vs<cr>")
vim.keymap.set("n", "<leader>sp", ":sp<cr>")

--terminal command
vim.keymap.set("n", "!", ":!")
