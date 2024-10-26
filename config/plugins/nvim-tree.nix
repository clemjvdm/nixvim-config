# File explorer
{
  plugins.nvim-tree = {
    enable = false;
    renderer.highlightOpenedFiles = "all";
    actions.openFile.quitOnOpen = true;
    view = {
        side = "right";
        width = "30";
    };
  };
}
