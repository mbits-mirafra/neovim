return {
  --pretty-fold
  {
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup({
        keep_indentation = false,
        fill_char = "━",
        sections = {
          left = {
            "━ ",
            function()
              return string.rep("*", vim.v.foldlevel)
            end,
            " ━┫",
            "content",
            "┣",
          },
          right = {
            "┫ ",
            "number_of_folded_lines",
            ": ",
            "percentage",
            " ┣━━",
          },
        },
      })
    end,
  },

  --Preview-fold
  {
    "anuvyklack/fold-preview.nvim",
    requires = "anuvyklack/keymap-amend.nvim",
    config = function()
      require("fold-preview").setup({
        -- Your configuration goes here.
      })
    end,
  },

  --prerequisites
  { "anuvyklack/keymap-amend.nvim" },
}
