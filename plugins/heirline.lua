return {
  "rebelot/heirline.nvim",
  opts = function (_, opts)
    local status = require("astronvim.utils.status")
    opts.statusline[1] = status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }
  end
}
