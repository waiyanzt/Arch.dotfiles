return {
  "zenbones-theme/zenbones.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    vim.g.zenbones = {
      lightness = "dim", -- Makes the light background colors less bright
      darken_comments = 45, -- Keep your existing comment darkening
    }
    vim.o.background = "light"
    vim.cmd.colorscheme("zenbones")
  end,
}
