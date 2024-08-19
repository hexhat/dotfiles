return {
    url = plugins.nvimcmp,
    dependencies = { plugins.luaship, plugins.nvimhlcolors },
    event = 'InsertEnter',
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            sources = {
                { name = 'nvim_lsp' }
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            }),
            snippet = { expand = function(args)
                vim.snippet.expand(args.body)
            end },
            formatting = { format = require("nvim-highlight-colors").format }
        })
    end
}
