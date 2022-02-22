# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="spaceship"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# Plugins 
plugins=(
  git
  history # Just run h
  zsh-syntax-highlighting
  zsh-autosuggestions # Suggestions of commands with history
  autojump # jump to directories.
)

### Plugins configuration
# zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# SPACESHIP
#SPACESHIP_PROMPT_ORDER=(
#  dir           # Current directory section
#  git           # Git section (git_branch + git_status)
#  docker
#  kubectl       # Kubectl context section
#  terraform     # Terraform workspace section
#  vi_mode       # Vi-mode indicator
#)
#
#SPACESHIP_PROMPT_ADD_NEWLINE=false
#SPACESHIP_KUBECTL_COLOR=blue
##SPACESHIP_DOCKER_SHOW=false
#SPACESHIP_GIT_STATUS_SHOW=false
#SPACESHIP_CHAR_SYMBOL="❯ "
#SPACESHIP_CHAR_SUFFIX=" "
#SPACESHIP_KUBECONTEXT_SHOW=true
#SPACESHIP_KUBECTL_SHOW=true
#SPACESHIP_KUBECTL_VERSION_SHOW=false
#SPACESHIP_KUBECONTEXT_NAMESPACE_SHOW=false
#SPACESHIP_VI_MODE_SHOW=true
#SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
# red    production
# #else, green if "internal" is anywhere in the context or namespace
# green  internal
#)

# Load Oh my Zsh
source $ZSH/oh-my-zsh.sh

### Aliases
alias k="kubectl"
alias cat="bat --style=auto"
alias kx="kubectx"
alias ls="exa"
alias zshconfig="nvim ~/.zshrc"
alias tmuxconfig="nvim ~/.tmux.conf"
alias tmuxsource="tmux source ~/.tmux.conf"
alias zshsource="source ~/.zshrc"

### Variables
export KUBE_EDITOR="nvim"
export SAVEHIST="100000"

# Completions
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
