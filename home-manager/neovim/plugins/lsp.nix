{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>[" = "goto_prev";
            "<leader>]" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<leader>ca" = "code_action";
            "<C-h>" = "signature_help";
            "<F2>" = "rename";
          };
        };

        servers = {
          clangd.enable = true;
          lua-ls.enable = true;
          rust-analyzer.enable = true;
          html.enable = true;
          htmx.enable = true;
          cssls.enable = true;
          eslint.enable = true;
          gopls.enable = true;
          jsonls.enable = true;
          pyright.enable = true;
          tailwindcss.enable = true;
          texlab.enable = true;
          tsserver.enable = true;
          zls.enable = true;
        };
      };
    };
  };
}
