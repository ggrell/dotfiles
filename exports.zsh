###### Path Exports ######

# Android SDK
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools

# Ruby (via Homebrew)
#export GEM_HOME="$HOME/.gem"
#export PATH="/opt/homebrew/opt/ruby@2.7/bin:$GEM_HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"

# Java (jenv)
export PATH="$HOME/.jenv/bin:$PATH"

###### Misc Exports ######

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(jenv init -)"

export LDFLAGS="-L/opt/homebrew/opt/ruby@2.7/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby@2.7/include"

export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
