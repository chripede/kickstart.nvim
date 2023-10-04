-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "catppuccin/nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}

    --    vim.cmd([[nnoremap \ :Neotree toggle<cr>]])
    vim.keymap.set('n', '\\', "<Cmd>Neotree toggle reveal<CR>", { desc = 'Toggle Neotree' })
    vim.keymap.set('n', '<leader>ng', "<Cmd>Neotree toggle reveal git_status<CR>", { desc = '[N]eotree [G]it status' })
    vim.keymap.set('n', '<leader>nb', "<Cmd>Neotree buffers toggle reveal<CR>",
      { desc = '[N]eotree [B]uffers' })
  end,
}
