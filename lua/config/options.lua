-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- backupcopy "yes" helps filesystem watchers to detect changes.
vim.opt.backupcopy = "yes"

-- File type overrides
vim.filetype.add({
  filename = {
    -- For a specific filename (e.g., a file named 'JenkinsFile' should be Groovy)
    -- JenkinsFile = "groovy",
    -- ["some-filename"] = "some-filetype",
  },
})
