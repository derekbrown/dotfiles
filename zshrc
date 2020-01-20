##################
# GENERAL CONFIG #
##################

export ZSH=/Users/derekbrown/dotfiles/oh-my-zsh
ZSH_THEME="arrow"
plugins=(git git-open apache2-macports bower brew git-extras jsontools npm osx sublime sudo)

###########
# HISTORY #
###########

HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Dont record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Dont record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Dont write duplicate entries in the history file.
setopt inc_append_history
setopt share_history

###############
# PATH CONFIG #
###############

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_NDK="/usr/local/opt/android-ndk"
export ANDROID_NDK_HOME="/usr/local/opt/android-ndk"
export ANDROID_HOME="/Users/derekbrown/Library/Android/sdk"
export PATH="/usr/local/opt/android-ndk:/Users/derekbrown/Library/Android/sdk:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin/mongodb/bin:/Users/derek/Sites/exo_browser/depot_tools:/Users/derek/play:/Users/derek/voldemort:/Users/derek.brown/bin:/Users/derekbrown/.local/bin"
source $ZSH/oh-my-zsh.sh


#################
# EDITOR CONFIG #
#################

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

##############
# GIT CONFIG #
##############

gds() {
  if [ $# -eq 0 ]
      then
          git diff | subl
      else
          git diff $@ | subl
  fi
}


###########
# ALIASES #
###########

# Getting Around
alias ..='cd ..'
alias ...='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias ~='cd ~'
alias c='clear'
alias home='cd ~'
alias w="cd ~/workspace"
alias m="cd ~/workspace/merlot"
alias ma="cd ~/workspace/malbec"
alias b="cd ~/workspace/cab"
alias bf="cd ~/workspace/merlot"
alias python="python3"
alias pip="pip3"

# ZSH Config
alias ez='subl ~/.zshrc'
alias sz='source ~/.zshrc'

# Git
alias g='git'
alias glg="git log"
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# React Native
alias rand="react-native run-android"
alias rios="react-native run-ios"
alias rstart="react-native start"
alias rlink="react-native link"

alias cleanall="watchman watch-del-all && rm -rf node_modules && npm install && rm -rf $TMPDIR/react-* && npm start -- --reset-cache"
alias cleancache="npm start -- --reset-cache"
alias cleanios="rm -rf ios/build"
alias cleannpm="rm -rf node_modules && npm install"
alias cleanpackager="rm -rf $TMPDIR/react-* && npm start -- --reset-cache"
alias cleanwatch="watchman watch-del-all"

alias clearall="watchman watch-del-all && rm -rf node_modules && npm install && rm -rf $TMPDIR/react-* && npm start -- --reset-cache"
alias clearcache="npm start -- --reset-cache"
alias clearios="rm -rf ios/build"
alias clearnpm="rm -rf node_modules && npm install"
alias clearpackager="rm -rf $TMPDIR/react-* && npm start -- --reset-cache"
alias clearwatch="watchman watch-del-all"


# Elixir
alias mc="mix compile"
alias mps="mix phx.server"
alias mdg="mix deps.get"
alias mdc="mix deps.compile"
alias mec="mix ecto.create"
alias mem="mix ecto.migrate"
alias imr="iex -S mix run"
alias ips="iex -S mix phx.server"
alias mdr="mix distillery.release"
alias mdrc="mix distillery.release.clean"

# Exeq
alias edb="ssh -L 5000:localhost:5432 derek@yellow-stage.exeq.io -p 51844"

# Bunches
alias cab="cd ~/workspace/cab"
alias es="expo start"
alias ys="yarn start"
alias bp="git push && expo publish"

alias cpr="code-push release-react Bunches ios"