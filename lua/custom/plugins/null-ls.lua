return {
  "nvimtools/none-ls.nvim",
  version = "*",
  dependencies = 'nvim-lua/plenary.nvim',

  config = function()
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettierd,
      }
    })
  end
}
