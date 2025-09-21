return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30, -- sidebar width
          side = "left",
        },
        renderer = {
          highlight_git = true,
          indent_markers = { enable = true },
        },
        filters = {
          dotfiles = false, -- show hidden files if false
        },
      })

      -- Keymaps
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },
}

