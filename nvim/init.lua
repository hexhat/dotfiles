-- TODO setup docs module

-- plugins/dependencies/tags declaration in one place
-- for clarity and simple management
plugins = {
    plenary = 'https://github.com/nvim-lua/plenary.nvim',
    treesitter = 'https://github.com/nvim-treesitter/nvim-treesitter',
    telescope = 'https://github.com/nvim-telescope/telescope.nvim',
    telescope_tag = '0.1.8',
    devicons = 'https://github.com/nvim-tree/nvim-web-devicons',
    oil = 'https://github.com/stevearc/oil.nvim',
    lspzero = 'https://github.com/VonHeikemen/lsp-zero.nvim',
    nvimcmp = 'https://github.com/hrsh7th/nvim-cmp',
    cmpnvimlsp = 'https://github.com/hrsh7th/cmp-nvim-lsp',
    luaship = 'https://github.com/L3MON4D3/LuaSnip',
    nvimhlcolors = 'https://github.com/brenoprata10/nvim-highlight-colors',
    lspconfig = 'https://github.com/neovim/nvim-lspconfig',
    nvimtree = 'https://github.com/nvim-tree/nvim-tree.lua',
    hlcolors = 'https://github.com/brenoprata10/nvim-highlight-colors',
}


-- Load main neovim settings first
require('Neovim')

-- Load filetype specific settings
--require('Filetypes')

-- Load plugins
require('Lazy')
