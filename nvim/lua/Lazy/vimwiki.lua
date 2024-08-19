return {
  url = "git@github.com:vimwiki/vimwiki.git",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "/home/alexey/obsidian",
        ext = ".md",
        syntax = "markdown",
      }
    }
  end
}

