{
  pkgs,
  config,
  ...
}: {
  home = {
    packages = with pkgs; [
      nodejs_22
    ];

  };

  programs.nixvim = {
    plugins = {
      lsp-format.lspServersToEnable = ["tsserver"];
      lsp.servers = {
        tsserver = {
          enable = true;
        };
      };
    };
  };

}
