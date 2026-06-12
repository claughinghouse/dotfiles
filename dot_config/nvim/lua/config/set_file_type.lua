vim.api.nvim_create_user_command("SFT", function(opts)
  vim.cmd("setfiletype " .. opts.args)
end, {
  nargs = 1,
  complete = "filetype",
  desc = "Proxy command for setfiletype",
})
