function add-params() {
    BIN=$(awk '{print $1}' <<< "$BUFFER")
    COUNT=$(wc -c <<< "$BIN")
    CURSOR=$COUNT
    # hack for adding yet space before params
    BUFFER[$CURSOR]="  "
}

zle -N add-params

# You should manually add to .zshrc something like this:
# bindkey -v '^K' add-params
