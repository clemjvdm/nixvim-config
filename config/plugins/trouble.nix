{
  plugins.trouble = {
      enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>tr<CR>";
      options.noremap = true;
      options.silent = true;
    }
  ];
}
