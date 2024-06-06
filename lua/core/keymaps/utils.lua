local M = {}

function M.wrap_text(start_char, end_char)
  local mode = vim.fn.mode()

  if mode == 'n' then
    -- In normal mode, select the word under the cursor
    vim.api.nvim_command('normal! viw')
  end

  -- Get the content of the visual selection or the word
  local selection = vim.fn.getreg('0')

  local wrapped = start_char .. selection .. end_char

  -- Replace the selection in the document
  vim.fn.setreg('0', wrapped)
  vim.api.nvim_command('normal! gv"0p')
end

return M
