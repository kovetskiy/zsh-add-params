zsh-add-params
==============

Forgot about the option in command line? No problem, just hit `CTRL-K`!

![usage example](https://cloud.githubusercontent.com/assets/8445924/7787466/25aaafae-01fd-11e5-8e53-c6e53b42a363.gif)

# Installation

You can install plugin via [antigen](https://github.com/zsh-users/antigen):
```
antigen bundle kovetskiy/zsh-add-params
```

Or manually:
```
git clone https://github.com/kovetskiy/zsh-add-params ~/.zsh-add-params/
```
and add including to your `.zshrc`:
```
source ~/.zsh-add-params/plugin.zsh
```

# Usage

First, you should add binding, for example with `CTRL+K`:
```
bindkey -v '^K' add-params
```

After that you should reload zsh.
