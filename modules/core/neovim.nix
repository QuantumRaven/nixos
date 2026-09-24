{
  config,
  pkgs,
  lib,
  ...
}:

{
  environment.variables.EDITOR = "nvim";
    programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customLuaRC = ''
        -- Set leader key
               vim.g.mapleader = ' '

               -- Basic options
               vim.opt.number = true
               vim.opt.relativenumber = true
               vim.opt.tabstop = 4
               vim.opt.shiftwidth = 4
               vim.opt.expandtab = true
               vim.opt.smartindent = true
               vim.opt.wrap = false
               vim.opt.cursorline = true
               vim.opt.mouse = 'a'
               vim.opt.termguicolors = true

               -- Key mappings
               vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
               vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
               vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })

               -- Status line and UI
               if pcall(require, 'lualine') then
                 require('lualine').setup()
               end

               -- Colorscheme
               vim.cmd('colorscheme desert')

               -- Treesitter (if available)
               if pcall(require, 'nvim-treesitter.configs') then
                 require('nvim-treesitter.configs').setup {
                   ensure_installed = { 'lua', 'javascript', 'typescript', 'python', 'nix' },
                   highlight = { enable = true },
                 }
               end

               -- LSP (if configured)
               if pcall(require, 'lspconfig') then
                 require('lspconfig').tsserver.setup {}
                 require('lspconfig').pyright.setup {}
               end
      '';

      plugins = with pkgs.vimPlugins; [
        # Core plugins
        nvim-treesitter
        nvim-lspconfig
        lualine-nvim
        nvim-cmp
        cmp-nvim-lsp
        cmp-buffer
        cmp-path

        # Optional UI
        nvim-web-devicons

        # File navigation
        nvim-tree-lua
      ];
    };
    };
}
