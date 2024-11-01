return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Added Capabilities to allow for formatting and other lsp features.
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      -- Added keymaps for code actions and goto definition.
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      --keymap for using clangd formatting
      vim.keymap.set("n", "<leader>gf", function()
        vim.lsp.buf.format({
          filter = function(client)
            return client.name == "clangd"
          end,
          async = true, --allows formatting to happen asynchronously
        })
      end, {desc = "Format code with clangd"})
    end,
  },
}
