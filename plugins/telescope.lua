-- local telescope = require("telescope")
-- local lga_actions = require("telescope-live-grep-args.actions")
--
-- telescope.setup {
--   extensions = {
--     live_grep_args = {
--       auto_quoting = true,
--       mappings = {
--         i = {
--           ["<C-k>"] = lga_actions.quote_prompt()
--         }
--       },
--     },
--   }
-- }

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  opts = function()
    -- local lga_actions = require("telescope-live-grep-args.actions")
    -- return {
    --   extensions = {
    --     live_grep_args = {
    --       auto_quoting = true,
    --       mappings = {
    --         i = {
    --           ["<C-K>"] = lga_actions.quote_prompt()
    --         }
    --       },
    --     },
    --   }
    -- }
  end,
  config = function()
    require("telescope").load_extension("live_grep_args")
    -- vim.api.nvim_set_keymap("n", "<leader>fg",  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    -- keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
  end
}
