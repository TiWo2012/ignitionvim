return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},

		config = function()
			vim.keymap.set("n", "<leader>o", ":Neotree focus<cr>")
			vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>")

      require('neo-tree').setup {
        source = {
          name = "filesystem",
          git_status = true,  -- Enable Git status in the sidebar
        },
        window = {
          width = 30,
        },
      }
    end
	},

	{
		"nvim-telescope/telescope.nvim",

		dependencies = { "nvim-lua/plenary.nvim" },

		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end
	},

	{
		'mbbill/undotree',

		config = function()
			vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
		end
	}
}
