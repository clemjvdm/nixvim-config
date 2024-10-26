# Treesitter enables syntax highlighting and provides syntax tools for other plugins
{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [ "c" "cpp" "css" "csv" "dockerfile" "haskell" "html" "java" "json" "javascript" "lua" "nix" "python" "query" "r" "rust" "vim" "vimdoc" ];
      highlight.enable = true;
    };
  };
}
