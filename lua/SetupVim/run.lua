
local M = {}

function M.run_file()
  vim.cmd("write")

  local ft = vim.bo.filetype
  local file = vim.fn.shellescape(vim.fn.expand("%"))
  local file_no_ext = vim.fn.expand("%:r")

  if ft == "c" then
    vim.cmd(
      "belowright split | terminal gcc "
      .. file
      .. " -o "
      .. file_no_ext
      .. " && ./"
      .. file_no_ext
    )

  elseif ft == "cpp" then
    vim.cmd(
      "belowright split | terminal g++ "
      .. file
      .. " -o "
      .. file_no_ext
      .. " && ./"
      .. file_no_ext
    )

  elseif ft == "rust" then
    vim.cmd("belowright split | terminal cargo run")

  elseif ft == "python" then
    vim.cmd("belowright split | terminal python3 " .. file)

  else
    print("No run command for filetype: " .. ft)
  end
end

return M

