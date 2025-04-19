# 🌀 My Tmux Setup

This setup includes a custom `.tmux.conf` configuration and a helper script `.tmux-switch.sh` for improving your tmux workflow.

## 📦 Usage

> You do not need to clone this repository. Just copy the two files directly to your home directory

1. Copy the files to your home directory:

```sh
curl -o ~/.tmux.conf https://raw.githubusercontent.com/phunguyen19/mysetup-tmux/main/.tmux.conf
```

2. Reload your tmux configuration:

```
tmux source ~/.tmux.conf
```

## ✨ Features

This tmux setup is optimized for productivity, efficient pane management, and smooth Neovim integration.

### 🔧 Configuration Enhancements

- 🖥 **256-color support** for better terminal rendering:
  - `default-terminal` set to `tmux-256color`
  - RGB color override for xterm

- 🖱 **Mouse support** fully enabled:
  - Click to select panes, scroll, resize, and more

- 🧠 **Vim-style copy mode**:
  - Use `v` to start selection
  - Use `y` to yank (copy)
  - Dragging with mouse won't exit copy mode

- ⚡ **Reduced input latency**:
  - `escape-time` set to `10`ms for faster escape from insert mode in Neovim

### 🎛 Custom Key Bindings

- 🔄 **Prefix remapped**:
  - From `Ctrl+b` → `Ctrl+a` (more ergonomic)

- 🪟 **Split panes**:
  - Horizontal: `|`
  - Vertical: `-`

- 🪜 **Resize panes** with `hjkl`:
  - `C-a + j/k/l/h` to resize in direction by 5 units

- 🧍 **Toggle pane zoom**:
  - Press `m` to maximize/minimize the current pane

- 🔁 **Reload config** instantly:
  - Press `r` to source `.tmux.conf` without restarting tmux

- 🔍 **Session and window picker** (via popup):
  - `s`: session picker
  - `w`: window picker  
  _(uses your custom `.tmux-switch.sh` + Telescope-tmux)_

### 📦 Plugins (via TPM)

- 🔄 **[tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)** – Save & restore tmux sessions
- 🧠 **[tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)** – Auto-save sessions periodically
- 🚀 **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** – Seamless navigation between tmux and Neovim panes
- 🌃 **[tmux-tokyo-night](https://github.com/fabioluciano/tmux-tokyo-night)** – Clean, dark theme

---

Run `prefix + I` to install plugins via TPM after setup.
