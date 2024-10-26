{
  plugins.alpha = {
    enable = true;
    layout = [
        { type = "padding"; val = 20; }
        {
            type = "text";
            val = [
              "    +------+     +------+     +------+    "
              "   /|     /|     |      |     |\\     |\\ "
              "  +-+----+ |     +------+     | +----+-+  "
              "  | |    | |     |      |     | |    | |  "
              "  | +----+-+     +------+     +-+----+ |  "
              "  |/     |/      |      |      \\|     \\|"
              "  +------+       +------+       +------+  "
            ];
            opts = { hl = "Type"; position = "center"; };
        }
        { type = "padding"; val = 2; }
        {
            type = "button";
            val = "find files";
            on_press.__raw = "require('telescope.builtin').find_files";
            opts = {
              shortcut = "space space";
              position = "center";
              width = 38;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
        }
        { type = "padding"; val = 1; }
        {
            type = "button";
            val = "recent files";
            on_press.__raw = "require('telescope.builtin').oldfiles";
            opts = {
              shortcut = "space re";
              position = "center";
              width = 38;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
        }
        { type = "padding"; val = 1; }
        {
            type = "button";
            val = "new file";
            on_press.__raw = "function() vim.cmd[[ene]] end";
            opts = {
              shortcut = "n";
              position = "center";
              width = 38;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
        }
        { type = "padding"; val = 1; }
        {
            type = "button";
            val = "exit";
            on_press.__raw = "function() vim.cmd[[qa]] end";
            opts = {
              shortcut = "X";
              position = "center";
              width = 38;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
        }
    ];
  };
}
