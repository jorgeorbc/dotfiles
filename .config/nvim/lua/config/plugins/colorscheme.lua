return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
  -- Default options:
    require('kanagawa').setup({
	compile = false,             -- enable compiling the colorscheme
	undercurl = true,            -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true},
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false,         -- do not set background color
	dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
	terminalColors = true,       -- define vim.g.terminal_color_{0,17}
	colors = {                   -- add/modify theme and palette colors
	    palette = {
	      sumiInk0 = "#282727", --lualine
	      sumiInk1 = "#625e5a",
	      sumiInk2 = "#625e5a",
	      sumiInk3 = "#12120f", --background
	      sumiInk4 = "#1D1C19", --columncolor (80)
	      sumiInk5 = "#282727", --cursorline
	      sumiInk6 = "#625e5a", --numbers
	    },
	    theme = {
	      wave = {},
	      lotus = {},
	      dragon = {},
	      all = {
		ui = {
		  bg_gutter = "none"
		}
	      }
	    },
	},
	theme = "wave",              -- Load "wave" theme
	-- map the value of 'background' option to a theme
	background = {
	    dark = "wave",           -- try "dragon" !
	    light = "lotus"
	},
    })
    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa")
  end,
}
