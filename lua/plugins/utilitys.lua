return {
  -- autopairs
  {
    "cohama/lexima.vim"
  },

  {
    "brianhuster/autosave.nvim",
    event="InsertEnter",
    opts = {} -- Configuration here
  },

  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("Comment").setup()
    end
  },

  {
    "Yggdroot/indentLine",

    config = function()
      vim.g.indentLine_char = "│"
      vim.g.indentLine_enabled = 1
      vim.keymap.set("n", "<leader>ll", ":IndentLinesToggle<cr>")
    end
  }
}
