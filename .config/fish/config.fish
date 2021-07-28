if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

switch (uname)
case Darwin
function emacs
  /Applications/Emacs.app/Contents/MacOS/Emacs $argv &
end
end

source ~/.asdf/asdf.fish

direnv hook fish | source
