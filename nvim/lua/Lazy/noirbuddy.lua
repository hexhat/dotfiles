-- it is completely rewritten colorscheme based on noirbuddy

return {
    url = 'https://github.com/jesseleite/nvim-noirbuddy',
    dependencies = {
        { url = 'https://github.com/tjdevries/colorbuddy.nvim' }
    },
    lazy = false,
    priority = 900,
    config = function()
        require('noirbuddy').setup {
            preset = 'minimal',
            colors = {
                background = '#1F2424',
                primary = '#78A16D',
                secondary = '#8FE16D',
                noir_0 = '#F5F5F5',
                noir_1 = '#f5f5f5',
                noir_2 = '#d5d5d5',
                noir_3 = '#b4b4b4',
                noir_4 = '#a7a7a7',
                noir_5 = '#949494',
                noir_6 = '#737373',
                noir_7 = '#535353',
                noir_8 = '#323232',
                noir_9 = '#1F2434',
                diagnostic_error = '#ff0038',
                diagnostic_warning = '#ff7700',
                diagnostic_info = '#47eae0',
                diagnostic_hint = '#47eae0',
                diff_add = '#45F16D',
                diff_change = '#47eae0',
                diff_delete = '#ff0038',
            },
            styles = {
                italic = false,
                bold = true,
                underline = false,
                undercurl = false,
            }
        }

        local Group = require('colorbuddy').Group
        local colors = require('colorbuddy').colors
        local styles = require('colorbuddy').styles


        Group.new('Normal', colors.noir_4, colors.background)
        Group.new('Search', colors.noir_9, colors.noir_0)
        Group.new('IncSearch', colors.noir_9, colors.noir_0)
        Group.new('Visual', nil, colors.noir_8)
        Group.new('SignColumn', nil, colors.background)
        Group.new('LineNr', colors.noir_8, colors.background)
        Group.new("EndOfBuffer", colors.noir_8, nil)

        Group.new('Comment', colors.noir_6)
        Group.new('Constant', colors.primary)
        Group.new('Character', colors.noir_5)
        Group.new('Identifier', colors.noir_0)
        Group.new('Statement', colors.noir_1)
        Group.new('PreProc', colors.primary)
        Group.new('Type', colors.noir_0)
        Group.new('Special', colors.noir_5)
        Group.new('Error', colors.primary)
        Group.new('Todo', colors.primary, colors.noir_8)
        Group.new('Function', colors.noir_0)

        Group.new('ColorColumn', nil, colors.noir_8)
        Group.new('Conceal', colors.noir_7)
        Group.new('Cursor', nil)
        Group.new('CursorColumn', nil, colors.noir_9)
        Group.new('CursorLine', nil, colors.noir_9)
        Group.new('CursorLineNr', colors.noir_6, colors.noir_9)
        Group.new('Directory', colors.noir_3)
        Group.new('DiffAdd', colors.primary, colors.noir_8)
        Group.new('DiffChange', colors.noir_0, colors.noir_8)
        Group.new('DiffDelete', colors.diff_add, colors.noir_8)
        Group.new('DiffText', colors.noir_0, colors.noir_7)
        Group.new('ErrorMsg', colors.noir_1, colors.primary)
        Group.new('VertSplit', colors.noir_8, colors.noir_9)
        Group.new('WinSeparator', colors.noir_8, colors.noir_9)

        Group.new('Folded', colors.noir_5, colors.noir_8)
        Group.new('FoldColumn', colors.noir_5, colors.noir_8)
        Group.new('MatchParen', nil, colors.noir_7)
        Group.new('MoreMsg', nil, colors.noir_6)
        Group.new('NonText', colors.noir_8, nil)
        Group.new('Pmenu', colors.noir_2, colors.noir_8)
        Group.new('PmenuSel', colors.noir_6, colors.noir_8)
        Group.new('PmenuSbar', colors.primary, colors.noir_8)
        Group.new('PmenuThumb', colors.primary, colors.noir_7)
        Group.new('Question', colors.noir_1, colors.noir_8)
        Group.new('SpecialKey', colors.noir_6, nil)
        Group.new('SpellBad', colors.primary)
        Group.new('SpellCap', colors.noir_0)
        Group.new('SpellLocal', colors.noir_5)
        Group.new('SpellRare', colors.primary)
        Group.new('StatusLine', colors.noir_5, colors.noir_8)
        Group.new('TabLine', colors.noir_3, colors.noir_8)
        Group.new('TabLineFill', nil, colors.noir_8)
        Group.new('TabLineSel', colors.noir_2, nil)
        Group.new('Title', colors.noir_3)
        Group.new('VisualNOS', colors.primary, colors.noir_8)
        Group.new('WarningMsg', colors.primary)
        Group.new('WildMenu', colors.noir_5, colors.noir_8)

        Group.new('FloatBorder', colors.noir_7)
        Group.new('FloatTitle', colors.noir_0)
        Group.new('NormalFloat', colors.noir_4)

        -- Treesitter Syntax Highlighting
        -- See :help treesitter-highlight-groups
        Group.new('@boolean', colors.secondary)
        Group.new('@character', colors.secondary)
        Group.new('@character.special', colors.secondary)
        Group.new('@comment', colors.noir_6)
        Group.new('@conditional', colors.noir_0)
        Group.new('@constant', colors.noir_0)
        Group.new('@constant.builtin', colors.noir_0)
        Group.new('@constant.macro', colors.primary)
        Group.new('@constructor', colors.noir_0)
        Group.new('@debug', colors.noir_0)
        Group.new('@define', colors.noir_0)
        Group.new('@exception', colors.noir_0)
        Group.new('@field', colors.noir_0)
        Group.new('@float', colors.noir_0)
        Group.new('@function', colors.noir_0)
        Group.new('@function.builtin', colors.noir_0)
        Group.new('@function.call', colors.noir_0)
        Group.new('@function.macro', colors.primary)
        Group.new('@include', colors.noir_0)
        Group.new('@keyword', colors.noir_0)
        Group.new('@keyword.function', colors.noir_0)
        Group.new('@keyword.operator', colors.noir_0)
        Group.new('@keyword.return', colors.noir_0)
        Group.new('@label', colors.noir_0)
        Group.new('@macro', colors.primary)
        Group.new('@method', colors.noir_0)
        Group.new('@method.call', colors.noir_0)
        Group.new('@namespace', colors.noir_0)
        Group.new('@none', colors.noir_6)
        Group.new('@number', colors.secondary)
        Group.new('@operator', colors.noir_0)
        Group.new('@parameter', colors.noir_0)
        Group.new('@preproc', colors.noir_0)
        Group.new('@property', colors.noir_0)
        Group.new('@punctuation', colors.noir_0)
        Group.new('@punctuation.bracket', colors.noir_0)
        Group.new('@punctuation.delimiter', colors.noir_0)
        Group.new('@punctuation.special', colors.primary)
        Group.new('@repeat', colors.noir_0)
        Group.new('@storageclass', colors.noir_0)
        Group.new('@string', colors.primary)
        Group.new('@string.escape', colors.noir_2)
        Group.new('@string.special', colors.noir_2)
        Group.new('@structure', colors.noir_0)
        Group.new('@tag', colors.noir_0)
        Group.new('@tag.attribute', colors.noir_0)
        Group.new('@tag.delimiter', colors.noir_0)
        Group.new('@text.literal', colors.noir_0)
        Group.new('@text.reference', colors.noir_0)
        Group.new('@text.title', colors.noir_0)
        Group.new('@text.todo', colors.noir_2)
        Group.new('@text.underline', colors.noir_2)
        Group.new('@text.uri', colors.noir_6)
        Group.new('@type', colors.noir_0)
        Group.new("@identifier", colors.noir_0)
        Group.new('@type.builtin', colors.noir_0)
        Group.new('@type.definition', colors.noir_0)
        Group.new('@variable', colors.noir_0)
        Group.new('@variable.builtin', colors.noir_0)
        Group.new('@lsp.type.function', colors.noir_0)
        Group.new('@lsp.type.macro', colors.primary)
        Group.new('@lsp.type.method', colors.noir_0)

        Group.new('@type.php', colors.noir_0)
        Group.new('@variable.php', colors.noir_0)
    end
}
