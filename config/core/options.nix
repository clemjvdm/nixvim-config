{
    opts = {
      # basics
      number = true;		# Absolute line number of current line
      relativenumber = true;	# Relative line numbers
      undofile = true;  	# Auto save and restore undo history

      # tab and indent
      tabstop = 2;  		# Maximum width of tab character
      shiftwidth = 2; 		# Size of an indent
      expandtab = true;		# Tab key inserts spaces instead of tab character
      autoindent = true;	# Apply indentation of current line to next
      smartindent = true;	# Smart indentation behavior depending on style

      # serach
      smartcase = true;		# Case sensitive search only when uppercase letters in search pattern
      # text rendering
      encoding = "utf-8";	# File-content encoding
      wrap = true;  		# Wrapping for long lines
      linebreak = true;  	# Wrap lines in nice places instead of middle of words
      scrolloff = 4;		# Minimum of 4 lines above/below the cursor
      sidescrolloff = 5;	# Minimum of 5 characters left/right of the cursor
      showtabline = 1;		# Show tab line only when more than one tab is open
      cursorline = true;    # Highlight the line of the cursor
      fileencoding = "utf-8";

      # UI
      title = true;		# Title of window is set to title of document

    };

    # share clipboard with OS 
    clipboard.register = ["unnamed" "unnamedplus"];

}
