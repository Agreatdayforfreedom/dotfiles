return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false, -- set true for 'mirage' variant, false for 'dark'
        overrides = {
          Normal = { bg = "none" },
          NormalNC = { bg = "none" },
          NormalFloat = { bg = "#13131c" },
          FloatBorder = { bg = "none" },
          VertSplit = { bg = "none" },
        },
      })
      vim.cmd("colorscheme ayu")
    end,
  },
}

