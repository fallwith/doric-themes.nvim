
local palettes = require("doric.palettes")
local highlights = require("doric.highlights")
local util = require("doric.util")
local config = require("doric.config")

local M = {}

function M.load(name)
  local resolved = name or config.resolve(vim.o.background)
  local palette = palettes[resolved]
  if not palette then
    local fallback = (vim.o.background == "dark") and "doric-dark" or "doric-light"
    resolved = fallback
    palette = palettes[fallback]
  end

  util.reset(resolved, palette.type)
  util.apply_highlights(highlights.build(palette))
end

function M.setup(opts)
  config.setup(opts)
end

return M
