{
  autoCmd = [
    {  # automatically set the indent width to two spaces for the filetypes in 'pattern'
      command = "setlocal shiftwidth=2 tabstop=2";
      event = [
        "FileType"
      ];
      pattern = [
        "c" "cpp" "css" "html" "haskell" "javascript" "lua" "nix" "r" "vim" "vimdoc" 
      ];
    }
    {  # automatically set the indent width to two spaces for the filetypes in 'pattern'
      command = "setlocal shiftwidth=2 tabstop=2";
      event = [
        "FileType"
      ];
      pattern = [
        "csv" "dockerfile" "java" "json" "python" "query" "rust"
      ];
    }
  ];
}
