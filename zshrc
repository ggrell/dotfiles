# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_BASE=$HOME/.dotfiles

# Load antigen
source $HOME/.dotfiles/antigen.zsh

# Load configs
source $HOME/.dotfiles/exports.zsh
source $HOME/.dotfiles/aliases.zsh
source $HOME/.exports

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Load oh-my-zsh's plugins
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle gradle 
antigen bundle adb
antigen bundle bundler
antigen bundle jenv

if [[ "$OSTYPE" == "darwin"* ]]; then
  antigen bundle osx 
  antigen bundle pod
  antigen bundle brew
  antigen bundle brew-cask

elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Set the theme
antigen theme romkatv/powerlevel10k

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Apply antigen
antigen apply

temppack() {
  if [ -z "$1" ] 
    then
      echo "Usage: temppack PackageName"
  else
    mkdir temppack
    cd temppack 
    mkdir $1
    cd $1
    swift package init --type library
    git init
    git add .
    git commit -m "first"
    echo ""
    echo "file://$(pwd)" | pbcopy
    echo "The repository path for $1 is now in your clipboard."
    echo ""
    [[ $BASH_VERSION ]] && read -p "Delete temp files?[Y/N]" -n 1 -r
    [[ $ZSH_VERSION ]] && read -q "REPLY?Delete temp files?[Y/N]"
    echo ""
    cd ../..
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo "Deleting temporary folder..."
      rm -rf temppack 
      echo "Done."
    fi
  fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
