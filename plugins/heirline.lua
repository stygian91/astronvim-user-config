return {
  "rebelot/heirline.nvim",
  opts = function (_, opts)
    local status = require("astronvim.utils.status")

    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.mode({ mode_text = { padding = { left = 1, right = 1 } } }),
      status.component.git_branch(),
      status.component.file_info { filetype = {}, filename = false, file_modified = false },
      status.component.git_diff(),
      status.component.nav({ scrollbar = false }),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.treesitter(),
    }
  end
}
