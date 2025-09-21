return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "moon", -- "storm", "night", "moon", "day"
        transparent = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },
        sidebars = { "qf", "help", "terminal", "packer" },
        dim_inactive = false,
      })

      vim.cmd.colorscheme("tokyonight")

      -- Optional highlight tweaks
      vim.cmd('hi Directory guibg=NONE')
      vim.cmd('hi SignColumn guibg=NONE')

    end,
  },
}

