return {
  "nvim-telescope/telescope.nvim",

  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<C-o>"] = false,
            ["<C-n>"] = false,
          },
        },
      },
    }

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope git files' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope help tags' })
  end
}
