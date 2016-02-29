add-params() {
    BIN=${BUFFER%% *}
    COUNT=$((${#BIN}+1))
    CURSOR=$COUNT
    # hack for adding yet space before params
    if [[ $CURSOR -gt 0 ]]
    then
      BUFFER[$CURSOR]="  "
    fi
}

zle -N add-params

# You should manually add to .zshrc something like this:
# bindkey -v '^K' add-params
