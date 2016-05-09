add-params() {
    if [ ! "$BUFFER" ]; then
        BUFFER=$(fc -ln -1)
    fi

    WORDS=(${(z)BUFFER})
    if [ $#WORDS -lt 2 ]; then
        return 1
    fi

    BIN=$BUFFER
    SHIFT=1 # this one for the extra space
    if [ $#WORDS -gt 2 -a "${BIN%% *}" = "sudo" ]; then
        BIN=${BIN#sudo }
        SHIFT=6

        if [ $CURSOR -eq $(( $SHIFT - 1 )) ]; then
            return
        fi
    fi

    BIN=${BIN%% *}
    if [ $CURSOR -eq $((${#BIN} + ${SHIFT})) ]; then
        BIN=${BUFFER%% *}
        SHIFT=1
        if [ "${BUFFER:$CURSOR-1:2}" = "  " ]; then
            BUFFER[$CURSOR]=""
        fi
    fi

    CURSOR=$((${#BIN} + ${SHIFT}))
    if [ $CURSOR -gt 0 ]
    then
      BUFFER[$CURSOR]="  "
    fi
}

zle -N add-params

# You should manually add to .zshrc something like this:
# bindkey -v '^K' add-params
