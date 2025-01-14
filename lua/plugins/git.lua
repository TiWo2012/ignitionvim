return {
  {
    "echasnovski/mini.diff",
    config = function()
      require("mini.diff").setup({
        view = {
          signs = {
            add = '+',
            change = '~',
            delete = '-',
          }
        }
      })
    end
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true,
    opts = {
      vim.keymap.set("n", "<leader>ng", ":Neogit<cr>", { desc = "open neogit" })
    }
  }
}
