return {
  -- {
  -- 	"nvim-neo-tree/neo-tree.nvim",
  -- 	branch = "v3.x",
  -- 	dependencies = {
  -- 		"nvim-lua/plenary.nvim",
  -- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  -- 		"MunifTanjim/nui.nvim",
  -- 	},
  --
  -- 	config = function()
  -- 		vim.keymap.set("n", "<leader>o", ":Neotree focus<cr>")
  -- 		vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")
  --
  --      require('neo-tree').setup {
  --        source = {
  --          name = "filesystem",
  --          git_status = true,  -- Enable Git status in the sidebar
  --        },
  --        window = {
  --          width = 30,
  --        },
  --      }
  --    end
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}

      vim.keymap.set("n", "<C-n>", ":NvimTreeFocus<cr>")
      vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<cr>")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope git files' })
    end
  },

  {
    'mbbill/undotree',

    config = function()
      vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
    end
  },

  {
    -- I recommend not installing this a dependency of oil as it isn't required
    -- until you open an oil buffer
    "FerretDetective/oil-git-signs.nvim",
    ft = "oil",
    ---@module "oil_git_signs"
    ---@type oil_git_signs.Config
    opts = {},

  },

  {
    "TiWo2012/scratchpad-nvim",
    branch = "main",

    config = function()
      require("scratchpad").setup({
        language = "cpp",
      })
    end
  }
}
