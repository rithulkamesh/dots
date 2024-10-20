if status is-interactive
    set fish_greeting
    export LANG='en_US.UTF-8'
    export TERM="xterm-256color"
    export LC_ALL='en_US.UTF-8'
    export EDITOR='/usr/bin/vim'

    zoxide init fish | source
    export MANPAGER=bat
    starship init fish | source
    nvm use lts -s

    alias ls='eza -alh --color=always --group-directories-first --icons' # preferred listing
    alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing

    alias python="python3"
    alias yay="paru"
    alias todo="todoist-cli"

    alias g="git"
    alias ga="git add"
    alias gp="git push"
    alias gpl="git pull"
    alias gcam="git commit -am"

    # pnpm
    set -gx PNPM_HOME "$HOME/Library/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
    # pnpm end

    direnv hook fish | source
    source ~/.config/fish/conf.d/theme.fish
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
