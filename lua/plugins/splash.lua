local colors = {
  blue = '#12263a',
  green = '#357266',
  red = '#c42021',
  white = '#f6f4f3',
  Lion = '#bb9457'
}

return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            [[ _______]],
            [[/        \]],
            [[| I G N I  |]],
            [[_|  T I O N  |_]],
            [[ |  V I M  |]],
            [[ \________/ ]],
          },
          center = {
            {
              desc = '🔎 Find Files',
              key = 'ff',
              fg = colors.blue,
              action = function() vim.cmd('Telescope find_files') end
            },
            {
              desc = '🔍 Find Word',
              key = 'fw',
              fg = colors.blue,
              action = function() vim.cmd('Telescope live_grep') end
            },
            {
              desc = '📂 New File',
              key = 'nf',
              fg = colors.blue,
              action = function() vim.cmd('enew') end
            },
            {
              desc = '  toggle terminal',
              key = 'tf',
              fg = colors.blue,
              action = function() vim.cmd('terminal') end
            },
            {
              desc = '  toggle lazygit',
              key = 'tg',
              fg = colors.blue,
              action = function() vim.cmd('terminal lazygit') end
            }
          },
          footer = {
            "😊 GREAT day for coding",
            fg = colors.green,
            style = "italic"
          }
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  }
}
