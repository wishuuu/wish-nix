{
  config,
  lib,
  ...
}: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let
      normal =
        lib.mapAttrsToList
        (key: action: {
          mode = "n";
          inherit action key;
        })
        {
          "<Space>" = "<NOP>";
          "q" = "<NOP>";

          # Esc to clear search results
          "<esc>" = ":noh<CR>";

          # back and fourth between the two most recent files
          "<C-c>" = ":b#<CR>";

          "<leader>y" = "\"+y";

          "<leader>w" = ":w<CR>";
          "<leader>q" = ":q<CR>";
          "<leader>pv" = ":Ex<CR>";

          "<C-h>" = "<C-w>h";
          "<C-l>" = "<C-w>l";
          "<C-j>" = "<C-w>j";
          "<C-k>" = "<C-w>k";

          "<C-Left>" = "<C-w>h";
          "<C-Right>" = "<C-w>l";
          "<C-Down>" = "<C-w>j";
          "<C-Up>" = "<C-w>k";

	  "<leader>sv" = "<C-w>v";
	  "<leader>sh" = "<C-w>s";
        };
      visual =
        lib.mapAttrsToList
        (key: action: {
          mode = "v";
          inherit action key;
        })
        {
          ">" = ">gv";
          "<" = "<gv";
          "<TAB>" = ">gv";
          "<S-TAB>" = "<gv";

          "K" = ":m '<-2<CR>gv=gv";
          "J" = ":m '>+1<CR>gv=gv";

          "<leader>p" = "\"_dP";
          "<leader>y" = "\"+y";
          "<leader>Y" = "\"+Y";
        };
    in
      config.nixvim.helpers.keymaps.mkKeymaps
      {options.silent = true;}
      (normal ++ visual);
  };
}
