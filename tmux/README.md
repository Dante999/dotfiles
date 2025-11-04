# Starting tmux automatically when launching zsh

To achieve this, just add right at the beginning of `~/.zshrc` the following
lines:

```
if [ "$TMUX" = "" ]; then tmux new \; set-option destroy-unattached; fi
```
