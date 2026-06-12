vim.api.nvim_create_user_command("CopyFilePathToClipboard", function()
  local file_path = vim.api.nvim_buf_get_name(0)
  local cwd = vim.fn.getcwd()
  local relative_path = file_path
  if file_path:find(cwd, 1, true) == 1 then
    relative_path = file_path:sub(#cwd + 2)
  end
  vim.fn.setreg("+", relative_path)
  vim.notify('Copied: ' .. relative_path, vim.log.levels.INFO)
end, {})

vim.api.nvim_create_user_command("CFP", function()
  vim.cmd(":CopyFilePathToClipboard")
end, {})
