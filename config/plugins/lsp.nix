{ pkgs, ... }:

{
  plugins.lsp = {
    enable = true;

    keymaps = {

      # vim.diagnostics.<action> keymaps
      diagnostic = {
        "<leader>cd" = "open_float";
      };

      # vim.lsp.buf.<action> keymaps
      lspBuf = {
        "<leader>ca" = "code_action";
        "<leader>rn" = "rename";
        "<leader>k" = "hover";
        "<leader>gD" = "declaration";
      };

      # other keymaps
      extra = [
        { key = "<leader>gd"; action = "<cmd>Telescope lsp_definitions<CR>"; }
        { key = "<leader>gi"; action =  "<cmd>Telescope lsp_implementations<CR>"; }
        { key = "<leader>gr"; action =  "<cmd>Telescope lsp_references<CR>"; }
        { key = "<leader>cD"; action =  "<cmd>Telescope diagnostics bufrnr=0<CR>"; }
      ];
    };

    # language servers to use
    servers = {
        clangd.enable = true;
	      nixd.enable = true;
        html.enable = true;
        lua_ls.enable = true;
        pyright.enable = true;
        ts_ls.enable = true;
        hls.enable = true;
        hls.installGhc = false;
        vuels = {
          enable = true;
          package = pkgs.nodePackages.vls;
        };
        rust_analyzer = {
            enable = true;
            installRustc = false;
            installCargo = false;
            settings.cargo.features = "all";
        };
      };
  };
}
