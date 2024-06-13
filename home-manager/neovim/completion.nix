{
  programs.nixvim = {
    opts.completeopt = ["menu" "menuone" "noselect"];

    plugins = {
      luasnip.enable = true;

      lspkind = {
        enable = true;

        cmp = {
          enable = true;
          menu = {
            nvim_lsp = "[LSP]";
            nvim_lua = "[api]";
            path = "[path]";
            luasnip = "[snip]";
            buffer = "[buffer]";
            neorg = "[neorg]";
          };
        };
      };

      cmp = {
        enable = true;

	settings.mapping = {
		"<C-d>" = "cmp.mapping.scroll_docs(-4)";
		"<C-f>" = "cmp.mapping.scroll_docs(4)";
		"<C-Space>" = "cmp.mapping.complete()";
		"<C-e>" = "cmp.mapping.close()";
		"<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
		"<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
		"<C-l>" = "cmp.mapping.confirm({ select = true })";
	};

      };
    };
  };
}
