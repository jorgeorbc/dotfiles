return {
  "nvimtools/none-ls.nvim",  -- nuevo nombre de null-ls
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
      },
    })
  end,
}
