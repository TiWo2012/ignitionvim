return {
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        app = "browser",
      })

      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

      -- add a keymap to oppen peek when being in a markdown buffer
      vim.keymap.set("n", "<leader>po", ":PeekOpen<cr>", { desc = "open peek" })
      vim.keymap.set("n", "<leader>pc", ":PeekClose<cr>", { desc = "close peek" })
    end,
  },
}
