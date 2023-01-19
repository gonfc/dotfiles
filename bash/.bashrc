# If not running interactively, don't do anything
# IF THIS LINE IS NOT FIRST ON .bashrc, IT ~~FUCKING~~ FREEZES SDDM
[[ $- != *i* ]] && return

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi


# That means that on first <Tab> it will complete to the longest common string and will invoke wildmenu (a horizontal and unobtrusive little menu). On next <Tab> it will complete the first alternative and it will start to cycle through the rest. You can go back and forth with <Tab> and <S-Tab> respectively.
# set wildmenu
set wildmode=longest:full,full

# cat /etc/fstab | pbcopy
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


# Max of history items. Use `history | /zf`
HISTCONTROL=ignoredups:erasedups  # no duplicate entries
HISTSIZE=1000000                   # big big history
HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#set -o vi

# using PAGER[|MANPAGER]=less
#export MANPAGER="nvim -c 'set ft=man' | col -b" 
#export PAGER="nvim -c 'set ft=man' | col -b" 
##export PAGER=“nvim +’set ft=man’ +’set number relativenumber’ +’set scrolloff=999’ +’norm 32j’ | col -b”

alias gs='git status'
alias gl='git last'
alias ts='sudo tlp-stat -s'
alias tb='sudo tlp bat'
alias ta='sudo tlp ac'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias speedtest='speedtest --secure'
alias ..='cd ..'
alias ls='ls -lhua --color=auto'
LS_COLORS='*.html=95:*.php=1;32:di=1;94:no=00:fi=00:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=1;4;104;37:st=37;44:ex=0;4:*.tar=01;31:*.tgz=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.png=01;35:';
export LS_COLORS
alias nv='nvim'
alias lv='sudo lvim'
alias j='journalctl -xe'
alias r='sudo ranger .'
alias rc='sudo ranger ~/.config'
alias rshared='ranger /mnt/st5Tome/_data/virtualization/shared_folder'
alias zvm='cd /mnt/st5Tome/projects/assets/Virtual Machines/'
alias zv='cd /mnt/0_static/SYNC/vaults/'
alias zc='cd ~/.config/ && ls'
alias cb='sudo nvim ~/.bashrc'
alias cn='sudo nvim ~/.config/nvim/init.vim'
alias cc='~/.config/chezmoi/chezmoi.toml'
alias sb='source ~/.bashrc'
alias sn='source ~/.config/nvim/init.vim'
alias nvh='sudo nvim ~/.bash_history'
export EDITOR='nvim'
export VISUAL='nvim'
export FZF_DEFAULT_COMMAND='fd'
export PATH=/home/user/.local/bin:$PATH

alias ets2='/run/media/user/st5_tome/games/"_linux_games"/ETS2_Linux/start.sh'
#PS1='[\u@\h \W]\$ '
#export PS1="\u@\H \W:\$ "
# export PS1="\u: "
[ -r /home/user/.byobu/prompt ] && . /home/user/.byobu/prompt
#https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
if [ "${PS1-}" ]; then
  if [ "${BASH-}" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

# fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# fzfrun
fzfr() {
  fzf -m -x | tr '\n' '\0' | xargs -r0 "$@"
}

export FZF_DEFAULT_COMMAND="find \! \( -path '*/.git' -prune \) -printf '%P\n'"

# prevent nested ranger instances
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}


chezmoi-cd() {
    cd $(chezmoi source-path)
}

#
## Returns a color according to free disk space in $PWD.
#function disk_color()
#{
#    if [ ! -w "${PWD}" ] ; then
#        echo -en ${Red}
#        # No 'write' privilege in the current directory.
#    elif [ -s "${PWD}" ] ; then
#        local used=$(command df -P "$PWD" |
#                   awk 'END {print $5} {sub(/%/,"")}')
#        if [ ${used} -gt 95 ]; then
#            echo -en ${ALERT}           # Disk almost full (>95%).
#        elif [ ${used} -gt 90 ]; then
#            echo -en ${BRed}            # Free disk space almost gone.
#        else
#            echo -en ${Green}           # Free disk space is ok.
#        fi
#    else
#        echo -en ${Cyan}
#        # Current directory is size '0' (like /proc, /sys etc).
#    fi
#}
#
#function load()
#{
#    local SYSLOAD=$(cut -d " " -f1 /proc/loadavg | tr -d '.')
#    # System load of the current host.
#    echo $((10#$SYSLOAD))       # Convert to decimal.
#}
#
## Returns a color indicating system load.
#function load_color()
#{
#    local SYSLOAD=$(load)
#    if [ ${SYSLOAD} -gt ${XLOAD} ]; then
#        echo -en ${ALERT}
#    elif [ ${SYSLOAD} -gt ${MLOAD} ]; then
#        echo -en ${Red}
#    elif [ ${SYSLOAD} -gt ${SLOAD} ]; then
#        echo -en ${BRed}
#    else
#        echo -en ${Green}
#    fi
#}
#
#
#function mydf()         # Pretty-print of 'df' output.
#{                       # Inspired by 'dfc' utility.
#    for fs ; do
#
#        if [ ! -d $fs ]
#        then
#          echo -e $fs" :No such file or directory" ; continue
#        fi
#
#        local info=( $(command df -P $fs | awk 'END{ print $2,$3,$5 }') )
#        local free=( $(command df -Pkh $fs | awk 'END{ print $4 }') )
#        local nbstars=$(( 20 * ${info[1]} / ${info[0]} ))
#        local out="["
#        for ((j=0;j<20;j++)); do
#            if [ ${j} -lt ${nbstars} ]; then
#               out=$out"*"
#            else
#               out=$out"-"
#            fi
#        done
#        out=${info[2]}" "$out"] ("$free" free on "$fs")"
#        echo -e $out
#    done
#}
#
# colored man
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}


#https://youtu.be/CFzEuBGPPPg?t=2207
stowh() {
    stow -vSt ~ $1
}

unstow() {
    stow -vDt ~ $1
}
