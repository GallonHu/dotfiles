source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/plugins.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/fzf.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
