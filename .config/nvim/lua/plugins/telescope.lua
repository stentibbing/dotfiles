vim.pack.add{{ src = "https://github.com/nvim-telescope/telescope.nvim" }}

local entry_display = require('telescope.pickers.entry_display')

-- Telescope's default lsp symbol layout gives the symbol *name* a fixed,
-- narrow column and lets the (short) kind fill the rest of the row, which
-- truncates long names while leaving whitespace after the kind. Swap it:
-- kind gets a small fixed column, name gets the remaining space.
local symbol_type_highlight = {
  ["Class"] = "TelescopeResultsClass",
  ["Constant"] = "TelescopeResultsConstant",
  ["Field"] = "TelescopeResultsField",
  ["Function"] = "TelescopeResultsFunction",
  ["Method"] = "TelescopeResultsMethod",
  ["Property"] = "TelescopeResultsOperator",
  ["Struct"] = "TelescopeResultsStruct",
  ["Variable"] = "TelescopeResultsVariable",
}

local symbols_displayer = entry_display.create{
  separator = " ",
  items = {
    { width = 12 },
    { remaining = true },
  },
}

local function symbols_entry_maker(entry)
  local symbol_type, symbol_name = entry.text:match "%[(.+)%]%s+(.*)"

  local make_display = function(e)
    return symbols_displayer{
      { e.symbol_type:lower(), symbol_type_highlight[e.symbol_type] },
      e.symbol_name,
    }
  end

  return {
    value = entry,
    ordinal = symbol_name .. " " .. (symbol_type or "unknown"),
    display = make_display,
    filename = entry.filename,
    lnum = entry.lnum,
    col = entry.col,
    symbol_name = symbol_name,
    symbol_type = symbol_type,
    start = entry.start,
    finish = entry.finish,
  }
end

require('telescope').setup{
  pickers = {
    lsp_document_symbols = {
      entry_maker = symbols_entry_maker,
    },
    lsp_workspace_symbols = {
      entry_maker = symbols_entry_maker,
    },
    lsp_dynamic_workspace_symbols = {
      entry_maker = symbols_entry_maker,
    },
  },
}
