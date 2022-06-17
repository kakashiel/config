--- to check the full configuration `:lua print(vim.inspect(require('packer').config))`
local compile_path = join_paths(get_config_dir(), "plugin", "packer_compiled.lua")
local snapshot_path = join_paths(get_cache_dir(), "snapshots")
local package_root = join_paths(vim.fn.stdpath("data"), "site", "pack")

local init_opts = {
  package_root = package_root,
  compile_path = compile_path,
  snapshot_path = snapshot_path,
  log = { level = "warn" },
  git = {
    clone_timeout = 300,
  },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.init(init_opts)
