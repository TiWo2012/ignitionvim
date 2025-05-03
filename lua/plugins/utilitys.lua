return {
  -- autopairs
  {
    "cohama/lexima.vim"
  },

  {
    "brianhuster/autosave.nvim",
    event = "VimEnter",
    opts = {} -- Configuration here
  },

  {
    "numToStr/Comment.nvim",
    event = "VimEnter",
    config = function()
      require("Comment").setup()
    end
  },

  {
    "nvimdev/indentmini.nvim",
    event = "VimEnter",
    config = function()
      require("indentmini").setup({
        exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "NvimTree" },
      })

      vim.cmd.highlight('IndentLine guifg=#808080')
    end
  },

  -- coppyed from lazyvims config
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
      },
    },
    -- stylua: ignore
    config = function(_, opts)
      if vim.o.filetype == "lazy" then
        vim.cmd([[messages clear]])
      end

      require("noice").setup(opts)
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    cmd = { "TodoTrouble", "TodoTelescope" },
    opts = {},
    -- stylua: ignore
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end,              desc = "Next Todo Comment" },
      { "[t",         function() require("todo-comments").jump_prev() end,              desc = "Previous Todo Comment" },
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>",                                   desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>",                                         desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",                 desc = "Todo/Fix/Fixme" },
    },
  },

  {
    "max397574/colortils.nvim",
    event = "VimEnter",
    cmd = "Colortils",
    config = function()
      require("colortils").setup()
    end,
  },

  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",

    config = function()
      local navic = require("nvim-navic")

      require("lspconfig").clangd.setup {
        on_attach = function(client, bufnr)
          navic.attach(client, bufnr)
        end
      }
    end
  },

  {
    "TiWo2012/floatingTodo.nvim",
    event = "VimEnter",
    config = function()
      require("floatingTodo").setup()
    end
  }
}
