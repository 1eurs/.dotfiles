
# Environment variables for all Zsh sessions
export PATH="/opt/homebrew/bin:$HOME/.cargo/bin:/opt/homebrew/opt/openjdk@21/bin:/opt/homebrew/opt/node@22/bin:$HOME/.config/scripts:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk@21


eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


alias ll='eza  --header --group --git --long'
alias ll.tree='eza --header --group --tree --level=2  --git --long --icons'
alias ls='eza --header --group --long --all'
alias ls.tree='eza --header --group --tree --level=2  --git --long --icons --all'


setopt AUTO_CD HIST_IGNORE_DUPS
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit && compinit
fi


if [[ -o interactive ]]; then
   start
fi

