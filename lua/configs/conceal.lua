local function conceal()
  vim.cmd("set conceallevel=2")

  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.md",
    callback = function()
      -- :syntax match Entity "&amp;" conceal cchar=&
      vim.cmd[[syntax match Entity /[ ]/ conceal cchar=t]]
    end,
  })
end

vim.api.nvim_create_user_command("Conceal", conceal, { nargs = 0 })
