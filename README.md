Installation
============

```
$ make install
```

To install GUI apps managed by Homebrew Cask, run:

```
$ make cask
```

Prerequisite
============

* Latest Go
* Vim 8.0+
* Homebrew

How to use
==========

zsh
---

Using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) with antigen.

[peco](https://github.com/peco/peco) and [ghq](https://github.com/x-motemen/ghq) are used for exploring `src` directory with `GOPATH` style.

### Tips

On zsh,

* `^S`: open any `src` directory by peco. It enables incremental search for projects you fetched.
* `^R`: search .zsh_history in peco.

vim
---

To install plugins, run `:PlugInstall`.

### Golang

Just use [fatih/vim-go: Go development plugin for Vim](https://github.com/fatih/vim-go).

LICENSE
=======

Public Domain
