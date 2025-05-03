return {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons' },  -- Für Icons in der Statusline (optional)
  config = function()
    local lualine = require('lualine')

    -- Runder Look für Lualine
    local theme = {
      normal = {
        a = { fg = '#f0f0f0', bg = '#61afef', gui = 'bold' },  -- Mode-Button
        b = { fg = '#ffffff', bg = '#282c34' },
        c = { fg = '#ffffff', bg = '#21252b' },
      },
      insert = {
        a = { fg = '#ffffff', bg = '#98c379', gui = 'bold' },
      },
      visual = {
        a = { fg = '#ffffff', bg = '#c678dd', gui = 'bold' },
      },
      replace = {
        a = { fg = '#ffffff', bg = '#e06c75', gui = 'bold' },
      },
      command = {
        a = { fg = '#ffffff', bg = '#d19a66', gui = 'bold' },
      },
      inactive = {
        a = { fg = '#3e4451', bg = '#282c34', gui = 'bold' },
        b = { fg = '#a0a1a7', bg = '#21252b' },
        c = { fg = '#a0a1a7', bg = '#21252b' },
      },
    }

    -- Lualine Setup
    lualine.setup({
      options = {
        theme = theme,  -- Setze das runde Design
        section_separators = { left = '', right = '' },  -- Runde Ecken (Anpassung der Trennzeichen)
        component_separators = { left = '', right = '' },  -- Runde Ecken (Anpassung der Trennzeichen)
        icons_enabled = true,
      },
      sections = {
        -- left section
        lualine_a = {'mode'},  -- Anzeige des Modus (Normal, Insert, etc.)
        lualine_b = {'branch', 'diff', 'diagnostics'},  -- Zeigt Git-Branch und Diff an
        lualine_c = {'filename', 'filetype'},  -- Dateiname und Dateityp

        -- right section
        lualine_x = {'encoding', 'fileformat', 'filesize'},  -- Datei-Details
        lualine_y = {'progress'},  -- Zeigt den Fortschritt des Cursors an
        lualine_z = {'location'},  -- Zeigt die aktuelle Zeile und Spalte an
      },

      extensions = {'fugitive', 'nvim-tree', 'oil'},  -- Optional: Erweiterungen für Git und den Dateiexplorer
    })
  end
}
