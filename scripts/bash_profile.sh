if [ -z $AMU_OLD_PATH ]
then
    AMU_OLD_PATH=$PATH
else
    PATH=$AMU_OLD_PATH
fi

#for my eyes
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
# LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
# export LS_COLORS
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# posix global for editor preference
export VISUAL=vi

#bash
alias ll="ls -la"
alias sbp="source ~/.bash_profile"
alias vbp="vi ~/.bash_profile"

#git
alias ga="git add"
alias gb="git branch"
alias gbuu="git branch --unset-upstream"
alias gcane="git commit --amend --no-edit"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"
alias gco="git checkout"
alias gcom="git checkout main"
alias gd="git diff"
alias gfomm="git fetch origin main:main"
alias gl="git log"
alias glol="git log --pretty=format:\"%h%x09%ad%x09%s\""
alias gp="git pull"
alias gr="git rebase"
alias gs="git status"
alias gsh="git show -s"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gro="git rebase --onto"
alias gr-s="git reset --soft"
alias gr-h="git reset --hard"

function charch() {
  echo "arch -x86_64 zsh"
  arch -x86_64 zsh
}

#android
alias acat="adb logcat"
alias adbtxt="adb shell input text"
alias agcat="adb logcat | grep"
alias asit="adb shell input text"
