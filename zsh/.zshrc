#load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
  #zgen load subnixr/minimal
  zgen load mgee/slimline
  zgen save
fi

[ -f "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"
source "${HOME}/.aliases"

#TERM=xterm-256color
stty erase '^?'

SLIMLINE_SSH_INFO_USER_COLOR=white
SLIMLINE_SSH_INFO_HOST_COLOR=white

bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[2~'   overwrite-mode     # Linux console, xterm, gnome-terminal
bindkey '\e[3~'   delete-char        # Linux console, xterm, gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal
