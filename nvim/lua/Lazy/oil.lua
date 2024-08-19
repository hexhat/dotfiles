return {
    url = plugins.oil,
    dependencies = { plugins.devicons },
    config = function()
        require('oil').setup {
            columns = { 'icon' },
            keymaps = {
                ['<C-h>'] = false,
                ['<M-h>'] = 'actions.select_split',
            },
            view_options = {
                show_hidden = true,
            }
        }
        vim.keymap.set('n', '-', require('oil').toggle_float)
  end
}
