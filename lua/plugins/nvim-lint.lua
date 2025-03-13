-- See https://github.com/LazyVim/LazyVim/discussions/4094#discussioncomment-12474759
return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      markdown = { "markdownlint-cli2" },
    },
    linters = {
      ["markdownlint-cli2"] = {
        args = {
          "--config",
          vim.fn.stdpath("config") .. "/lua/plugins/cfg/markdownlint-cli2.yaml",
          "--",
        },
      },
    },
  },
}
