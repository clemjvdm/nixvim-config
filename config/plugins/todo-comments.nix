{
  plugins.todo-comments = {
      enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>Trouble todo<CR>";
      options.noremap = true;
      options.silent = true;
    }
  ];
}
