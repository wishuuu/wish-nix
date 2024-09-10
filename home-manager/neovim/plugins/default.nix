{
  imports = [
    ./comment.nix
    ./copilot.nix
    ./efm.nix
    ./git.nix
    ./harpoon.nix
    ./lsp.nix
    ./lualine.nix
    ./markdown-preview.nix
    ./minimals.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight.enable = true;

    plugins = {
      
      nvim-autopairs.enable = true;
      surround.enable = true;

      #trim = {
      #  enable = true;
      #  settings = {
      #    highlight = true;
      #    ft_blocklist = [
      #      "checkhealth"
      #      "floaterm"
      #      "lspinfo"
      #      "neo-tree"
      #      "TelescopePrompt"
      #    ];
      #  };
      #};
    };
  };
}
