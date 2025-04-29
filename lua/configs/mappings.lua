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
m("n", "<c-h>", vim.cmd.TmuxNavigateLeft, { silent = true })
m("n", "<c-j>", vim.cmd.TmuxNavigateDown , { silent = true })
m("n", "<c-k>", vim.cmd.TmuxNavigateUp, { silent = true })
m("n", "<c-l>", vim.cmd.TmuxNavigateRight, { silent = true })

-- window resizing using arrowkeys
m("n", "<c-up>", ":resize -2<cr>", { silent = true })
m("n", "<c-down>", ":resize +2<cr>", { silent = true })
m("n", "<c-left>", ":vertical resize -2<cr>", { silent = true })
m("n", "<c-right>", ":vertical resize +2<cr>", { silent = true })

m("n", "<leader>w", ":wa<cr>")
m("n", "<leader>W", ":w!<cr>")

-- close panes
m("n", "<leader>c", ":close<cr>")
m("n", "<leader>q", ":q<cr>")
m("n", "<leader>Q", ":q!<cr>")

-- undotree
m("n", "<leader>ut", ":UndotreeToggle<cr>")

m("n", "<leader>vs", ":vs<cr>")
m("n", "<leader>sp", ":sp<cr>")

--terminal command
m("n", "!", ":!")

-- clear search
m("n", "<esc>", ":noh<cr>", { silent = true })

-- terminals
m("n", "<leader>to", ":terminal<cr>", { noremap = true, silent = true })
m("t", "<leader>tc", "exit<cr>", { noremap = true, silent = true })
m("t", "<C-x>", [[<C-\><C-n>]], { noremap = true, silent = true })

m("n", "<leader>so", vim.cmd.so)

m("n", "-", vim.cmd.Oil)

m("n", "<leader>no", vim.cmd.Note)

local ls = require("luasnip")
vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

vim.g.mapleader = " "
