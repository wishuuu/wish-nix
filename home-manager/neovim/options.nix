{
  programs.nixvim = {
    opts = {
      updatetime = 100; 
      
      relativenumber = true; 
      number = true; 
      mouse = "a"; 
      mousemodel = "extend"; 
      splitbelow = true; 
      splitright = true; 

      swapfile = false; 
      backup = false; 
      modeline = true; 
      modelines = 100; 
      undofile = true; 
      hlsearch = true; 
      incsearch = true; 
      inccommand = "split"; 
      ignorecase = true; 
      
      smartcase = true; 
      
      scrolloff = 8; 
      sidescrolloff = 5; 
      signcolumn = "yes"; 
      colorcolumn = "100"; 
      laststatus = 3; 
      fileencoding = "utf-8"; 
      termguicolors = true; 
      spell = false; 
      wrap = false; 

      
      tabstop = 4; 
      shiftwidth = 4; 
      expandtab = true; 
      autoindent = true; 

      textwidth = 0; 
      foldlevel = 99; 
    };
  };
}
