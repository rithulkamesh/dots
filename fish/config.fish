if status is-interactive
    set fish_greeting
    export LANG='en_US.UTF-8'
    export TERM="xterm-256color"
    export LC_ALL='en_US.UTF-8'
    export EDITOR='/usr/bin/vim'
    export ANDROID_HOME=$HOME/Android/Sdk

    zoxide init fish | source
    export MANPAGER=bat
    starship init fish | source

    alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
    alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
    alias ll='eza -l --color=always --group-directories-first --icons'  # long format
    alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
    alias l='eza -lah --color=always --group-directories-first --icons' # tree listing
    alias python="python3"
    alias yay="paru"

    alias notes="cd ~/notes && nvim -c 'Neorg workspace notes'"
    alias docker="podman"
    alias docker-compose="podman-compose"

    nvm use lts -s

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
