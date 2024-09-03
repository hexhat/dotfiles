return {
    url = plugins.nvimtree,
    dependencies = { plugins.devicons },
    config = function()
        require("nvim-tree").setup({
            filters = { dotfiles = false, custom = { '^.git$' }},
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },
        })
    end
}
