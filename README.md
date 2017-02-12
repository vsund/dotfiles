# Dotfiles

These dotfiles use [Dotbot](https://github.com/anishathalye/dotbot) for installation.
There are [screenshots](https://github.com/vsund/dotfiles/blob/master/SCREENSHOTS.md) available (because everybody loves screenshots).


## Dependencies

* general
    * `python`
    * `git`
* gtk
    * [`arc-theme`](https://github.com/horst3180/arc-theme)
* i3
    * [`i3blocks`](https://github.com/vivien/i3blocks)
    * [`i3-style`](https://github.com/acrisci/i3-style)
    * [`ttf-font-awesome`](https://aur.archlinux.org/packages/ttf-font-awesome)
    * [`ttf-font-icons`](https://aur.archlinux.org/packages/ttf-font-icons)
* icons
    * [`surfn`](https://github.com/erikdubois/Surfn)



## Installation

```bash
~$ git clone --recursive https://github.com/vsund/dotfiles .dotfiles
```

For installing a predefined profile:

```bash
~/.dotfiles$ ./install-profile <profile> [<configs...>]
# see meta/profiles/ for available profiles
```

For installing single configurations:

```bash
~/.dotfiles$ ./install-standalone <configs...>
# see meta/configs/ for available configurations
```

You can run these installation commands safely multiple times, if you think that helps with better installation.


## Contents

### Profiles

```
meta/profiles/
├── server
├── workstation
└── workstation-minimal
```

### Dotbot configurations

```
meta/configs/
├── bash.yaml
├── dunst.yaml
├── fonts.yaml
├── git.yaml
├── gnupg.yaml
├── gtk.yaml
├── i3.yaml
├── icons.yaml
├── parcellite.yaml
├── profile.yaml
├── qt.yaml
├── teiler.yaml
├── terminal-colors.yaml
├── termite.yaml
├── vim.yaml
├── x11.yaml
└── youtube-dl.yaml
```

### Dotfiles

```
.
├── editors
│   └── vim
│       ├── autoload
│       ├── bundle
│       ├── plugins.vim
│       ├── spell
│       ├── swapfiles
│       ├── undofiles
│       └── vimrc
├── gui
│   ├── dunst
│   │   └── dunstrc
│   ├── fonts
│   ├── gtk
│   │   ├── 2
│   │   └── 3
│   ├── i3
│   │   ├── config
│   │   ├── i3blocks.conf
│   │   └── lock.sh
│   ├── icons
│   │   └── flat.yaml
│   ├── qt
│   │   └── Trolltech.conf
│   └── x11
│       └── xinitrc
├── shells
│   ├─── bash
│   │   ├── aliases
│   │   ├── bashrc
│   │   ├── logout
│   │   └── profile
│   └── profile
├── terminals
│   ├── colors
│   │   └── base16-shell
│   └── termite
│       └── config
└── tools
    ├── crypto
    │   └── gpg
    │       ├── dirmngr.conf
    │       ├── gpg-agent.conf
    │       └── gpg.conf
    ├── misc
    │   ├── parcellite
    │   │   └── parcelliterc
    │   ├── rofi
    │   │   └── config
    │   ├── teiler
    │   │   ├── config
    │   │   ├── profiles
    │   │   └── uploader
    │   └── youtube-dl
    │       └── config
    └── vcs
        └── git
            ├── gitattributes
            └── gitconfig
```
