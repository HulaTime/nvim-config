require('octo').setup({
  enable_builtin = true,
  suppress_missing_scope = {
    projects_v2 = true,
  }
})
require('core.plugin_config.git.octo.keymaps')
