local buf = nil -- Variable to hold the buffer ID

function OpenFloat()
  local file_path = os.getenv("HOME") .. "/.todo.txt"

  -- Check if the buffer already exists
  if buf == nil then
    -- Open the file
    local file = io.open(file_path, "r")
    if not file then
      print("Could not open file: " .. file_path)
      return
    end

    -- Read the entire content of the file
    local content = file:read("*a")
    file:close()

    -- Create a new buffer
    buf = vim.api.nvim_create_buf(false, false)     -- false: not listed, true: scratch

    -- Set the buffer content
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(content, "\n"))

    -- Set the buffer name to the file path
    vim.api.nvim_buf_set_name(buf, file_path)
  end

  -- Create or open the floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = 80,
    height = 30,
    row = 10,
    col = 10,
    border = "rounded",
  })

  -- Optionally, set some options for the window
  vim.api.nvim_win_set_option(win, 'wrap', true)
  vim.api.nvim_win_set_option(win, 'filetype', 'text')
end

-- Create a user command to open the floating window
vim.api.nvim_create_user_command('Note', OpenFloat, {})
