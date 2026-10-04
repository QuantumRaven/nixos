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
