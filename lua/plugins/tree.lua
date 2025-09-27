return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          highlight_git = true,
          indent_markers = { enable = true },
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
      })

      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

      vim.keymap.set("n", "<leader>h", function()
        if vim.bo.filetype == "NvimTree" then
          vim.cmd("wincmd l")
        else
          vim.cmd("wincmd h")
        end
      end, { noremap = true, silent = true })

      vim.keymap.set("n", "<leader>l", function()
        if vim.bo.filetype == "NvimTree" then
          vim.cmd("wincmd l")
        else
          vim.cmd("wincmd l")
        end
      end, { noremap = true, silent = true })
    end,
  },
}

