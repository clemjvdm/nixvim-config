{
  plugins.twilight = {
    enable = true;
    settings = {
      context = 10;
      dimming = {
          alpha = 0.25;
      };
      expand = [
        "function"
        "method"
        "table"
        "if_statment"
      ];
      treesitter = true;
    };
  };
  
# automatically enable twlight
  autoCmd = [
    {
      event = "VimEnter";
      command = "TwilightEnable";
    }
  ];
}
