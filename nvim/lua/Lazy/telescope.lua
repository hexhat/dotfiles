return {
    url = plugins.telescope,
    tag = plugins.telescope_tag,
    dependencies = { plugins.plenary },
    -- TODO https://www.reddit.com/r/neovim/comments/17f9pqi/what_is_the_difference_between_setting_keymaps/
    keys = function()
        local builtin = require('telescope.builtin')
        local alias = vim.keymap.set
        alias('n', '<a-s>', builtin.find_files, {})
        alias('n', '<leader>fg', builtin.live_grep, {})
        alias('n', '<leader>fb', builtin.buffers, {})
        alias('n', '<leader>fh', builtin.help_tags, {})
    end
}
