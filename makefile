all: install

install:
	[ -d $(HOME)/.vim ]	||	ln -s $(PWD)/.vim	$(HOME)/.vim
	ln -fs $(PWD)/.bashrc		$(HOME)/.bashrc
	ln -fs $(PWD)/.gitconfig	$(HOME)/.gitconfig
	# ln -s $(PWD)/.zshrc		$(HOME)/.zshrc

neobundle:
	git clone https://github.com/Shougo/neobundle.vim $(PWD)/.vim/bundle/neobundle.vim
