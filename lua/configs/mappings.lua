local m = vim.keymap.set

-- better escape
m("i", "jk", "<esc>")
m("i", "jj", "<esc>")
m("t", "jk", "<esc>")
m("t", "jj", "<esc>")

-- better o
-- m("n", "o", "o<esc>")
-- m("n", "O", "O<esc>")

-- window nav
m("n", "<leader>h", "<c-w>h", { silent = true })
m("n", "<leader>j", "<c-w>j", { silent = true })
m("n", "<leader>k", "<c-w>k", { silent = true })
m("n", "<leader>l", "<c-w>l", { silent = true })

-- window resizing using arrowkeys
m("n", "<c-up>", ":resize -2<cr>", { silent = true })
m("n", "<c-down>", ":resize +2<cr>", { silent = true })
m("n", "<c-left>", ":vertical resize -2<cr>", { silent = true })
m("n", "<c-right>", ":vertical resize +2<cr>", { silent = true })

-- new file
m("n", "<leader>n", ":new<cr>")

m("n", "<leader>w", ":wa<cr>")

-- close panes
m("n", "<leader>q", ":q<cr>")

-- undotree
m("n", "<leader>ut", ":UndotreeToggle<cr>")

m("n", "<leader>vs", ":vs<cr>")
m("n", "<leader>sp", ":sp<cr>")

--terminal command
m("n", "!", ":!")

-- clear search
m("n", "<esc>", ":noh<cr>")

vim.g.mapleader = " "
