{pkgs, ...}: {
  plugins.oil = {
    enable = true;

    settings = {
      use_default_keymaps = true;
      default_file_explorer = true;
      view_options = {
          show_hidden = true;
          natural_order = true;
      };

      

      keymaps = {
          "<C-h>" = false;
          "<BS>" = "actions.parent";
      };

    };
  

  };

  keymaps = [
    {
      mode = "n";
      key = "-";
      action = "<cmd>Oil<CR>";
      options.noremap = true;
      options.silent = true;
      options.desc = "Open oil.nvim";
    }
  ];

  extraPackages = with pkgs; [ ripgrep git gcc ];  # ripgrep needed for live_grep
}
