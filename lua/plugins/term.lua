return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Size of the terminal window
        size = 20,  -- You can adjust the size here

        -- Hide line numbers in terminal
        hide_numbers = true,

        -- Direction of terminal (horizontal, vertical, or tab)
        direction = "horizontal",  -- You can set this to 'vertical' or 'tab' as well

        -- Shell to use in terminal (adjust this to your shell)
        shell = "/bin/zsh",  -- You can change this to bash, fish, etc.

        -- Additional customization
        float_opts = {
          border = "curved",  -- You can also use 'single', 'double', 'rounded', etc.
        },
      })

      vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<cr>", { desc="open up a floating terminal" })
      vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<cr>", { desc="open up a vertical terminal" })
      vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<cr>", { desc="open up a horizontal terminal" })
      vim.keymap.set("n", "<leader>lg", ":ToggleTermSend lazygit<cr>", { desc="open up a lazygit" })
      vim.keymap.set("n", "<leader>hm", ":ToggleTermSend btm<cr>", { desc="open up a hardware monitor" })
      vim.api.nvim_set_keymap("t", "<C-x>", [[<C-\><C-n>]], { noremap = true, silent = true })
    end
  }
}
