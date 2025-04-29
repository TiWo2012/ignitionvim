return {
  {
    "leath-dub/snipe.nvim",
    keys = {
      {"<leader>so", function () require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu"}
    },
    opts = {}
  },

  -- remove comments to get a Tab line
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      insert_at_start = true,
      -- …etc.
      --
      vim.keymap.set("n", "<leader>1", ":BufferGoto 1<cr>"),
      vim.keymap.set("n", "<leader>2", ":BufferGoto 2<cr>"),
      vim.keymap.set("n", "<leader>3", ":BufferGoto 3<cr>"),
      vim.keymap.set("n", "<leader>4", ":BufferGoto 4<cr>"),
      vim.keymap.set("n", "<leader>5", ":BufferGoto 5<cr>"),
      vim.keymap.set("n", "<leader>6", ":BufferGoto 6<cr>"),
      vim.keymap.set("n", "<leader>7", ":BufferGoto 7<cr>"),
      vim.keymap.set("n", "<leader>8", ":BufferGoto 8<cr>"),
      vim.keymap.set("n", "<leader>9", ":BufferGoto 9<cr>"),
      vim.keymap.set("n", "<leader>0", ":BufferGoto 10<cr>"),
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
