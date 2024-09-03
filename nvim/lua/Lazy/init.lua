-- TODO rename all require(filenames) as in plugins table

-- init the lazy plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end; vim.opt.rtp.prepend(vim.opt.rtp, lazypath)


-- each include contains a *fully-encapsulated plugin
-- (*some states still depends on vim settings and the above plugins table)
require('lazy').setup({
    require('Lazy.treesitter'), -- DONE
    require('Lazy.telescope'), -- DONE
    require('Lazy.oil'), -- DONE
    require('Lazy.nvimtree'),
    require('Lazy.vimwiki'),

    -- zero-lsp config
    require('Lazy.lsp-zero'), -- DONE
    require('Lazy.nvim-cmp'), -- DONE
    require('Lazy.nvim-lspconfig'), -- DONE

    require('Lazy.lualine'),
    require('Lazy.noirbuddy'),
    require('Lazy.nvim-highlight-colors'),
    require('Lazy.rainbow-delimiters'),
})
