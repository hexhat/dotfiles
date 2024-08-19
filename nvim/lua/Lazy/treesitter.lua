local ts_install_list = { 'c', 'lua', 'vim', 'vimdoc', 'query', -- required by the plugin

    -- main
    'c', 'asm', 'nasm', 'disassembly', 'zig', 'arduino',
    'bash', 'lua',
    'cpp', 'forth',
    'php', 'phpdoc', 'javascript',
    'racket', 'commonlisp',
    'haskell', 'elm',

    -- markups
    'markdown', 'html', 'css', 'scss',
    'json', 'xml', 'latex', 'toml',

    -- other
    'comment',
    'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'gitignore',
    'http', 'make', 'cmake', 'jq', 'sql',
    'gpg', 'csv', 'dockerfile', 'bibtex', 'tmux'

} return {
    url = plugins.treesitter,
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = ts_install_list,
            sync_install = false,
            auto_install = true, -- auto download languages
            highlight = {
                enable = true
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<Leader>s',
                    node_incremental = '<Leader>k',
                    node_decremental = '<Leader>j',
                    scope_incremental = '<Leader>l',
                }
            }
        })
    end
}
