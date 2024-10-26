{
  plugins.cmp-path.enable = true;
  plugins.cmp-calc.enable = true;
  plugins.cmp-emoji.enable = true;
  plugins.cmp = {
    enable = true;
    settings = {

      completion.completeopt = "menu,menuone,preview,noselect";
      mapping = {
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = false })";
      };

      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "calc"; }
        { name = "emoji"; }
      ];
    };
  };
}
