# 🌀 My Tmux Setup

This setup includes a custom `.tmux.conf` configuration and a helper script `.tmux-switch.sh` for improving your tmux workflow.

> You do not need to clone this repository. Just copy the two files directly to your home directory

1. Copy the files to your home directory:

```sh
curl -o ~/.tmux.conf https://raw.githubusercontent.com/phunguyen19/mysetup-tmux/main/.tmux.conf
curl -o ~/.tmux-switch.sh https://raw.githubusercontent.com/phunguyen19/mysetup-tmux/main/.tmux-switch.sh
```

2. Make the script executable:

```sh
chmod +x ~/.tmux-switch.sh
```

3. Reload your tmux configuration:

```
tmux source ~/.tmux.conf
```
