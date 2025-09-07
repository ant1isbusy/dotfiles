source /usr/share/cachyos-zsh-config/cachyos-config.zsh
export PATH="/home/antoine/.local/bin:$PATH"

wal() {
    # Run wal silently
    command wal "$@" >/dev/null 2>&1 && \

    # If the second param is -i, run swww on the image
    if [[ "$1" == "-i" ]]; then
        swww img "$2" --transition-type fade --transition-duration 1 >/dev/null 2>&1
    fi && \

    # Run the other scripts silently
    zathura-pywal -a 0.9 >/dev/null 2>&1 && \
    ~/misc/alacritty-color-export/script.sh >/dev/null 2>&1 && \
    ~/.config/waybar/scripts/launch.sh > /dev/null 2>&1
}


alias clf="clear && fastfetch"
alias ff="fastfetch"
alias za="zathura"
alias cl="clear"
alias hyprconf="nvim ~/.config/hypr/hyprland.conf"
alias shtd="shutdown"
alias ex="exit"
alias rb="reboot"
alias zshrc="nvim ~/.zshrc"
alias tt="tree"
alias venvactivate="source venv/bin/activate"
alias dcu="sudo docker-compose up"
alias dcd="sudo docker-compose down"
alias curr="zathura ~/uni/Studium/curr.pdf"
# alias swebcompile="cd /tmp/ && rm -rf sweb && mkdir -p /tmp/sweb && cd /tmp/sweb/ && cmake ~/uni/OS/bss24a5/ && make -j"
# alias os="cd ~/uni/Archive/24SS/OS/bss24a5/"
alias todo="nvim ~/.docs/todo.md"
alias prem='python3 ~/coding/football-analysis/query_fav.py "EPL" "Arsenal"'
alias iphone-send="kdeconnect-cli -d 81d968d9_c91c_499d_9ec4_1be45553980f --share "
alias wifi-connect="nmcli device wifi connect"
source $HOME/.cargo/env
