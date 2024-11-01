local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.opt.number = true

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.cpp, *.cc, *.h" }, -- or any other patterns for C/C++ files
  callback = function()
    vim.lsp.buf.format({
      filter = function(client)
        return client.name == "clangd"
      end,
      async = false, ---Makes sure the formatting is complete before save.
    }) -- Format before saving
  end,
})
