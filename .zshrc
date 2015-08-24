# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# テーマはお好きなモノを下記で設定してください
ZSH_THEME="dallas"

# Example aliases
alias ll='ls -l -a'
alias la='ls -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias df='df -h'
alias clr='clear'

# sftp
alias myalias='cat ~/.zshrc | grep alias && source ~/.zshrc'

# hintのパス
settingPath="setting-dash"
hintPath="$settingPath/hint"

# パスワード関連を保管しておくファイル
alias mypass="cat ~/$settingPath/.password"

# その他の設定ファイルを保管しておく場所
alias myhint="cat ~/$hintPath/.hint"
alias mycss_hint="cat ~/$hintPath/.css_hint"
alias mydns_hint="cat ~/$hintPath/.dns_hint"
alias myhack="cat ~/$hintPath/.hack"
alias myphphack="cat ~/$hintPath/.php_hack"
alias myrails_hack="cat ~/$hintPath/.rails_hint"
alias myvimhack="cat ~/$hintPath/.vimhack"
alias mygithint="cat ~/$hintPath/.git_hint"
alias mysqlhint="cat ~/$hintPath/.mysqlhint"
alias myyard="cat ~/.yard_hint"
alias myrails_rabbit="cat ~/$hintPath/.rabbit_hint"
alias myunderscorehint="cat ~/$hintPath/.underscore.js.hint"

# ssh

# 便利コマンド
alias histtop10="history|sed -e 's/sudo //g'|awk '{ print $2 }'|sort|uniq -c|sort -r|head"
alias gitsort_local='(for i in `git branch | colrm 1 2` ; do echo `git log --date=iso8601 -n 1 --pretty="format:[%ai] %h" $i` $i ; done) | sort -r'
alias gitsort_remote='(for i in `git branch -r | colrm 1 2` ; do echo `git log --date=iso8601 -n 1 --pretty="format:[%ai] %h" $i` $i ; done) | sort -r'
alias gitsort_all='(for i in `git branch -a | colrm 1 2` ; do echo `git log --date=iso8601 -n 1 --pretty="format:[%ai] %h" $i` $i ; done) | sort -r'

#nginx のコマンド
alias nginx.start='sudo nginx'
alias nginx.stop='sudo nginx -s stop'
alias nginx.restart='sudo nginx -s reload'
alias nginx.reload='sudo nginx -s reopen'
alias nginx.syntax='sudo nginx -t'

# shortcut
alias dir.nginx='/usr/local/etc/nginx'
alias dir.memo='~/.memo'
alias dir.acros='~/workspace/acros'
alias dir.ansible='/usr/local/etc/ansible'

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)
plugins=(git ruby osx bundler brew rails emoji-clock)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.nodebrew/current/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# GoPath
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=~/workspace/go

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
fpath=(/usr/local/share/zsh-completions $fpath)

# Rabbit
export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib

export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export PATH=/usr/local:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH


export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi

    BUFFER=$(\history -n 1 | \eval $tac | \peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY
