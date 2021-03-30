#alias lx='ls -lXB'         #  Sort by extension.
#alias lk='ls -lSr'         #  Sort by size, biggest last.
#alias lt='ls -ltr'         #  Sort by date, most recent last.
#alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
#alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
#alias ll="ls -lGaf"
#alias lm='ll |more'        #  Pipe through 'more'
#alias lr='ll -R'           #  Recursive ls.
#alias la='ll -A'           #  Show hidden files.
#alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# bundle shortcuts
alias bpi='be pod install'
alias bf='be fastlane'

alias up='brew update && brew upgrade && brew doctor && brew cleanup'

alias killdns='sudo dscacheutil -flushcache; sudo killall mDNSResponder;'

alias more='less'
