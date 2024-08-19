return {
    url = plugins.nvimtree,
    dependencies = { plugins.devicons },
    config = function()
        require("nvim-tree").setup()
    end
}
