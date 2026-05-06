all: install

install: deps brew link

BREW_FORMULAE := wget lv hub gh go zsh tig tree the_silver_searcher ripgrep tmux reattach-to-user-namespace coreutils ghq peco node figlet universal-ctags
BREW_CASKS := google-chrome visual-studio-code

vim/autoload/plug.vim:
	curl -fLo $@ --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

deps: vim/autoload/plug.vim
	mkdir -p $(HOME)/.vimtmp
	mkdir -p $(HOME)/.vimback
	command -v brew >/dev/null 2>&1 || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

${HOME}/src/github.com/zsh-users/antigen:
	mkdir -p $(dir $@)
	git clone https://github.com/zsh-users/antigen.git $@

brew:
	brew install $(BREW_FORMULAE)
	brew cleanup

cask:
	brew install --cask $(BREW_CASKS)
	command -v docker >/dev/null 2>&1 || brew install docker

PWD:=$(CURDIR)
srcs:=vimrc vim gitconfig zshrc tmux.conf ideavimrc ctags
link: ${HOME}/src/github.com/zsh-users/antigen
	$(foreach src,$(srcs),ln -Fs $(PWD)/$(src) $(HOME)/.$(src);)

${HOME}/.zshrc.mine:
	touch $(HOME)/.zshrc.mine

.PHONY: install deps brew cask link
