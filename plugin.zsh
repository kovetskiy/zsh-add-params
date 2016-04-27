add-params() {
    WORDS=(${(z)BUFFER})
    if [ $#WORDS -lt 2 ]; then
        return 1
    fi

    BIN=$BUFFER
    SHIFT=2 # this one for the extra space
    if [ $#WORDS -gt 2 ]; then
        BIN=${BIN#sudo }
        SHIFT=$((LEN + 5))
    fi

    BIN=${BIN%% *}
    CURSOR=$((${#BIN} + ${SHIFT}))
    if [[ $CURSOR -gt 0 ]]
    then
      BUFFER[$CURSOR]="  "
    fi
}

zle -N add-params

# You should manually add to .zshrc something like this:
# bindkey -v '^K' add-params
