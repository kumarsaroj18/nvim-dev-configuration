-- Configure the plugin
require("toggleterm").setup({
  -- Use a different terminal shell
  shell = "zsh",

  -- Change the terminal height
  size = 10,

  -- Change the terminal position
  direction = "float",

  -- Keybindings
  bindings = {
    -- Toggle the terminal open and closed using <C-t>
    toggle = "<C-t>",
  },
})
