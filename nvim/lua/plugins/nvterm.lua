return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup({
      behavior = {
        autoclose_on_quit = {
          enabled = true,
          confirm = true,
        },
      },
    })
    local terminal = require("nvterm.terminal")

    local new_mode = { "n" } --not required
    local toggle_mode = { "n", "t" }
    local mappings = {
      --new terminal mappings

      --[[
      {
        new_mode,
        "<A-h>",
        function()
          terminal.new("horizontal")
        end,
      },
      {
        new_mode,
        "<A-v>",
        function()
          terminal.new("vertical")
        end,
      },
      ]]

      --toggle terminal mappings
      {
        toggle_mode,
        "<A-h>",
        function()
          terminal.toggle("horizontal")
        end,
      },
      {
        toggle_mode,
        "<A-v>",
        function()
          terminal.toggle("vertical")
        end,
      },
      {
        toggle_mode,
        "<A-f>",
        function()
          terminal.toggle("float")
        end,
      },
    }
    for _, mapping in ipairs(mappings) do
      vim.keymap.set(mapping[1], mapping[2], mapping[3])
    end
  end,
}
