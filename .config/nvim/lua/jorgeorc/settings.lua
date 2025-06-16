-- Indentation and formatting
vim.opt.smartindent = true
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.shiftwidth = 4        -- indentation width
vim.opt.softtabstop = 4       -- tab key behaves like 4 spaces
vim.opt.textwidth = 80        -- max text width per line
vim.opt.colorcolumn = "80"    -- vertical line at column 80

-- Visual settings
vim.opt.wrap = false          -- disable line wrapping
vim.opt.termguicolors = true  -- enable true color support
vim.opt.signcolumn = "yes"    -- always show sign column
vim.opt.scrolloff = 8         -- keep 8 lines visible above/below cursor

-- File handling and safety
vim.opt.swapfile = false      -- disable swap files
vim.opt.backup = false        -- disable backup files
vim.opt.undofile = true       -- enable persistent undo history

-- Search behavior
vim.opt.hlsearch = false      -- disable search result highlighting after search
vim.opt.incsearch = true      -- enable incremental search

-- Performance and behavior
vim.opt.updatetime = 50       -- faster update time for events (in ms)
vim.opt.isfname:append("@-@") -- add '@-@' to file name characters
