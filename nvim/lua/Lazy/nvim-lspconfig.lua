return {
    url = plugins.lspconfig,
    dependencies = { plugins.cmpnvimlsp },
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = 'LspInfo',
        config = function()
            local lsp_zero = require('lsp-zero')

            -- lsp_attach is where you enable features that only work if a
            -- language server is active at current file
            local lsp_attach = function(client, bufnr)
                local opts = { buffer = bufnr }
                local alias = vim.keymap.set
                alias('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
                alias('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
                alias('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
                alias('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
                alias('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
                alias('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
                alias('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
                alias('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
                alias({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
                alias('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
            end

            lsp_zero.extend_lspconfig({
                sign_text = true,
                lsp_attach = lsp_attach,
                capabilities = require('cmp_nvim_lsp').default_capabilities()
            })

            require('lspconfig').intelephense.setup({})
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = { diagnostics = { globals = { 'vim', 'plugins' }}},
                },
            })
        end
}
