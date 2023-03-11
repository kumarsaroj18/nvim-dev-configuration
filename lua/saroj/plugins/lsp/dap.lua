-- Configure DAP for Jest
local dap = require("dap")

-- Set the path to the Jest CLI executable
dap.adapters.jest = {
  type = "executable",
  command = "jest",
  args = { "--runInBand" },
  options = {
    cwd = vim.fn.getcwd(),
  },
  env = {
    NODE_ENV = "test",
  },
}

-- Set the default configuration for Jest debugging
dap.configurations.jest = {
  {
    type = "jest",
    name = "Jest debug",
    request = "launch",
    program = "${workspaceFolder}/node_modules/jest/bin/jest.js",
    cwd = vim.fn.getcwd(),
    console = "integratedTerminal",
    internalConsoleOptions = "neverOpen",
    runtimeArgs = { "--no-watchman" },
    sourceMaps = true,
    protocol = "inspector",
    restart = true,
  },
}

-- Set the path to the debug adapter executable
dap.adapters.python = {
  type = "executable",
  command = "python",
  args = { "-m", "debugpy.adapter" },
}

-- Set the default configuration for debugging
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    pythonPath = function()
      return vim.fn.exepath("python3")
    end,
  },
}
