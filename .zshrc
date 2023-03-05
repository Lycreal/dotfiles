ANTIGEN_HOME="${HOME}/.antigen/"
[ ! -d $ANTIGEN_HOME ] && mkdir -p "$ANTIGEN_HOME"
[ ! -f $ANTIGEN_HOME/antigen.zsh ] && curl -L git.io/antigen-nightly -o $ANTIGEN_HOME/antigen.zsh

source $ANTIGEN_HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git
antigen bundle docker
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme refined
antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'
setopt no_nomatch
