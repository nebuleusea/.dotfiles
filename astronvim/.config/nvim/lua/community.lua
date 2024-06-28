-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.hyprlang" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.search.nvim-hlslens" },
  { import = "astrocommunity.programming-language-support.csv-vim" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- import/override with your plugins folder
}
