# Fuzzy finder
{ pkgs, ... }: {
  plugins.telescope = {
    enable = true;

    extensions = {
      media-files.enable = true;
      fzf-native.enable = true;  # better fuzzy finding performance
    };

    settings = {
      defaults = {
        border = true;
        borderchars = ["─" "│" "─" "│" "┌" "┐" "┘" "└"];
      };
    };

    settings.defaults.mappings.i = {  # fuzzy finder mappings internal mappings
      "<C-j>" = "move_selection_next";
      "<C-k>" = "move_selection_previous";
    };
    keymaps = {
      "<leader><leader>" = {
          action = "find_files";
          options.desc = "Find project files";
          options.noremap = true;
      };
      "<leader>b" = {
          action = "buffers";
          options.desc = "Find buffers";
          options.noremap = true;
      };
      "<leader>re" = {
          action = "oldfiles";
          options.desc = "Find recent files";
          options.noremap = true;
      };
      "<leader>/" = {
          action = "live_grep";
          options.desc = "Search current file";
          options.noremap = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
    }
  ];

  extraPackages = with pkgs; [ ripgrep git gcc ];  # ripgrep needed for live_grep
}
