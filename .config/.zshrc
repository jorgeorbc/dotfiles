# Load Zsh modules and functions
autoload -Uz compinit && compinit

# Set custom prompt
PS1="%F{green}%n@%m%f:%F{red}%~%f %F{white}%#%f "

# Aliases
alias ls='eza --group-directories-first'
alias tree='eza -T'

# PATH modifications
export PATH="$PATH:$HOME/.local/share/lua-language-server/bin"

# Completion style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Show system info
neofetch

export PATH="$HOME/.local/bin:$PATH"
