--You can change the tab precesion numbers later on when you please

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

--for C++ indentation
--vim.bo.autoindent = true
--vim.bo.smartindent = true
--vim.bo.cindent = true

vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set cindent")  -- Ensure cindent is enabled
vim.cmd("set cinoptions=:0,(0")  -- Customize cinoptions
