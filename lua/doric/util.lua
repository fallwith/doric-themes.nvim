
local M = {}

function M.apply_highlights(groups)
  local function validate_name(name, label)
    if type(name) ~= "string" or name:match("^[%w_@.]+$") == nil then
      error("doric: invalid " .. label .. " name: " .. vim.inspect(name))
    end
  end
  for group, spec in pairs(groups) do
    validate_name(group, "highlight group")
    if type(spec) == "table" and spec.link then
      validate_name(spec.link, "highlight link")
    end
    local ok, err = pcall(vim.api.nvim_set_hl, 0, group, spec)
    if not ok then
      error("doric: failed to set highlight " .. vim.inspect(group) .. ": " .. tostring(err))
    end
  end
end

function M.reset(name, background)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  if vim.o.background ~= background then
    vim.o.background = background
  end
  vim.g.colors_name = name
end

return M
