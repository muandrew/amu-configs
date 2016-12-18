if [ -z $AMU_OLD_PATH ]
then
    AMU_OLD_PATH=$PATH
else
    PATH=$AMU_OLD_PATH
fi

#bash
alias ll="ls -la"
alias sbp="source ~/.bash_profile"
alias vbp="vi ~/.bash_profile"

#git
alias gb="git branch"
alias gbuu="git branch --unset-upstream"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git checkout master"
alias gd="git diff"
alias gl="git log"
alias gp="git pull"
alias gr="git rebase"
alias gs="git status"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gro="git rebase --onto"
alias gr-s="git reset --soft"
alias gr-h="git reset --hard"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"

#android
##https://plus.google.com/+JakeWharton/posts/hPkaEwza6HG
function upfind() {
  dir=`pwd`
  while [ "$dir" != "/" ]; do
    p=`find "$dir" -maxdepth 1 -name $1`
    if [ ! -z $p ]; then
      echo "$p"
      return
    fi
    dir=`dirname "$dir"`
  done
}

function gw() {
  GW="$(upfind gradlew)"
  if [ -z "$GW" ]; then
    echo "Gradle wrapper not found."
  else
    $GW $@
  fi
}

alias acat="adb logcat"
alias adbtxt="adb shell input text"
alias agcat="adb logcat | grep"
alias asit="adb shell input text"
