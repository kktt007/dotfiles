###
 # @Author: your name
 # @Date: 2021-09-26 09:21:40
 # @LastEditTime: 2021-09-26 09:31:45
 # @LastEditors: Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: \github\dotfiles\.zshrc
#zsh zsh-syntax-highlighting zsh-autosuggestions fzf ripgrep
# chsh -s $(which zsh)
# root用户的shell别改，会出问题

export ZSH="/home/kktt/.oh-my-zsh"

# 本来是ys ,启用了pure后设置成空或删除
# 注意#后面的空格，注意pure的顺序靠后

# #source $ZSH_CUSTOM/themes/pure/pure.zsh no need, but if need, could use absolute path.
# zsh-autosuggestions zsh-syntax-highlighting must source foo.zsh.
# don't install zsh-completions and zsh-completions  no need to source.
# if any questions,just check if the path is in $fpath

ZSH_THEME=""  
fpath+=$ZSH_CUSTOM/themes/pure
plugins=(git git-prompt sudo fzf ripgrep npm yarn systemd aliases alias-finder z history ssh-agent zsh_reload)

# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You can't "export" your .bashrc to a .zshrc
# source ~/.bash_profile if below doesn't work
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# autoload the function compinit and to call it
autoload -U promptinit; promptinit
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
rm -f ~/.zcompdump; compinit
prompt pure

# 你可以把这个加入到/etc/profile文件中，这样它就会在你每次打开一个会话的时候自动运行了：
# echo 'eval `ssh-agent`' >> /etc/profile
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa_github id_rsa_gitee

# https://wiki.archlinux.org/title/Zsh#Key_bindings
export VISUAL=nvim
export EDITOR="$VISUAL"

export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1.5

if [ -n "$WINDOWID" ]; then
        TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 80 / 100)))
        xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias h='history'
alias ai='sudo pacman -S'
alias aiy='sudo pacman -Sy'
alias aiyu='sudo pacman -Syu'
alias aiyy='sudo pacman -Syy'

alias home='cd ~'

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias af='alias-finder'

source $ZSH/oh-my-zsh.sh
source $HOME/.config/scripts/z.sh