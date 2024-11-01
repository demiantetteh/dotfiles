return {

  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
--You can change the above line to be vim.keymap.set('n', '<C-n', ':Neotree filesystem reveal left<CR>', {})
--to ensure you press CR after the command 
--but I'm using toggle for simplicity sake. So C-n opens the tree and closes it

  end

}
