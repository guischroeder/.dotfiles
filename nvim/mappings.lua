return {
  n = {
    -- get relative path
    ["<leader>yrp"] = {
      function()
        local path = vim.fn.expand "%:."
        vim.fn.setreg("+", path)
        vim.notify('Copied "' .. path .. '" to the clipboard!')
      end,
    },

    -- better search
    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    -- better scroll
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",

    -- copy whole file
    ["<leader>y"] = '[["+y]]',

    -- heirline buffer
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer",
    },

    -- telescope
    ["gD"] = "<cmd>Telescope lsp_references show_line=false<cr>",
  },

  v = {
    -- better indent
    ["<"] = "<gv",
    [">"] = ">gv",

    -- move lines
    ["J"] = ":m '>+1<CR>gv=gv",
    ["K"] = ":m '<-2<CR>gv=gv",
  },
}
