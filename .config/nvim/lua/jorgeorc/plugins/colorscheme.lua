return {
    {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      --vim.g.gruvbox_material_background = "hard"
      --vim.g.gruvbox_material_ui_contrast = "high"
      --vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_cursor = "auto"

      vim.g.gruvbox_material_colors_override = { bg = '#1E1E1E' }
      vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")
    end,
    },

     {
        'rebelot/kanagawa.nvim',
        config = function()
            --vim.cmd('colorscheme kanagawa')
        end
    },
    {
        'Mofiqul/dracula.nvim',
        config = function()
            --vim.cmd('colorscheme dracula')
        end
    },
-- lua/plugins/rose-pine.lua
    {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		--vim.cmd("colorscheme rose-pine")
	end
    },
    { 
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
	--vim.cmd("colorscheme catppuccin-mocha")
      end
    },
}
