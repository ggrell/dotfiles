###### Path Exports ######

if [[ $(sysctl -n machdep.cpu.brand_string) == *'Intel'* ]]; then
    HOMEBREW_PATH="/usr/local"
else
    HOMEBREW_PATH="/opt/homebrew"
fi

# Android SDK
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools

# Ruby (via Homebrew)
export GEM_HOME="$HOME/.gem"
export PATH="$HOMEBREW_PATH/opt/ruby@2.7/bin:$GEM_HOME/bin:$PATH"

# Java (jenv)
export PATH="$HOME/.jenv/bin:$PATH"

###### Misc Exports ######

eval "$($HOMEBREW_PATH/bin/brew shellenv)"
eval "$(jenv init -)"

export LDFLAGS="-L$HOMEBREW_PATH/opt/ruby@2.7/lib"
export CPPFLAGS="-I$HOMEBREW_PATH/opt/ruby@2.7/include"

export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
