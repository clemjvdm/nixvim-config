{
  globals.mapleader = " ";

  keymaps = let
    opts = {
      noremap = true;
      silent = true;
    };
  in 
    [

      # basics
      {
        mode = ["i"];
        key = "jk";
        action = "<ESC>";
        options = opts;
      }
      {
        mode = ["n"];
        key = "nt";
        action = ":tabnew<CR>";
        options = opts;
      }
      {
        mode = ["n"];
        key = "S-l";
        action = ":tabnext<CR>";
        options = opts;
      }
      {
        mode = ["n"];
        key = "S-h";
        action = ":tabprevious<CR>";
        options = opts;
      }
      {
        mode = ["n"];
        key = "<leader>d";
        action = ":bd<CR>";
        options = opts;
      }
      {
        mode = ["n"];
        key = "<leader>D";
        action = ":bd!<CR>";
        options = opts;
      }

      # move when in insert mode
      {
        mode = ["i"];
        key = "<C-h>";
        action = "<Left>";
        options = opts;
      }
      {
        mode = ["i"];
        key = "<C-j>";
        action = "<Down>";
        options = opts;
      }
      {
        mode = ["i"];
        key = "<C-k>";
        action = "<Up>";
        options = opts;
      }
      {
        mode = ["i"];
        key = "<C-l>";
        action = "<Right>";
        options = opts;
      }
      
      # window switching with Ctrl-hjkl
      {
        mode = ["n"];
        key = "<C-h>";
        action = "<C-w>h";
        options = opts;
      }
      {
        mode = ["n"];
        key = "<C-j>";
        action = "<C-w>j";
        options = opts;
      }
      {
        mode = ["n"];
        key = "<C-k>";
        action = "<C-w>k";
        options = opts;
      }
      {
        mode = ["n"];
        key = "<C-l>";
        action = "<C-w>l";
        options = opts;
      }

      # remove highlights
      {
        mode = ["n"];
        key = "<leader>nn";
        action = ":noh<CR>";
        options = opts;
      }
      
    ];

}
