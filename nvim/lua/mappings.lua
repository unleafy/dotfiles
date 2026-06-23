require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>rr", function()
  local filename = vim.fn.expand('%:t')
  local output = vim.fn.expand('%:r')
  local cmd = string.format('g++ "%s" -o "%s" -std=c++17 -static -O2 -Wall -Wextra && ./%s; rm "%s"', filename, output, output, output)
  vim.cmd('split | terminal ' .. cmd)
end, { noremap = true, silent = true, desc = "Complie & run current C++ File"})

map("n", "<leader>rd", function()
  local filename = vim.fn.expand('%:t')
  local output = vim.fn.expand('%:r')
  local cmd = string.format('g++ "%s" -o "%s" -std=c++17 -static -O2 -Wall -Wextra -DDEBUG && ./%s; rm "%s"', filename, output, output, output)
  vim.cmd('split | terminal ' .. cmd)
end, { noremap = true, silent = true, desc = "Complie & run current C++ File"})


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
