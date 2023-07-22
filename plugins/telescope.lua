return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  config = function()
    local tele = require("telescope")
    tele.load_extension("live_grep_args")
    tele.load_extension("undo")
  end
}
