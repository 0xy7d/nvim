return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyTransparent = false
      vim.g.moonflyItalics = true
      vim.g.moonflyUnderlineMatchParen = true
      vim.g.moonflyVirtualTextColor = true
      vim.g.moonflyNormalFloat = true
      vim.g.moonflyWinSeparator = 2

      local themes = { "moonfly", "tokyonight", "catppuccin", "rose-pine" }
      local current = 1

      local function cycle_theme()
        current = (current % #themes) + 1
        vim.cmd("colorscheme " .. themes[current])
      end

      vim.cmd("colorscheme " .. themes[current])
      vim.api.nvim_create_user_command("ColorschemeCycle", cycle_theme, {})
      vim.keymap.set("n", "<leader>ut", cycle_theme, { desc = "Cycle themes" })
    end,
  },
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },
}

