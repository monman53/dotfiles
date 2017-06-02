all: install

install:
	[ -d $(HOME)/.vim ]	||	ln -s $(PWD)/.vim	$(HOME)/.vim
	ln -s $(PWD)/.bashrc	$(HOME)/.bashrc
	ln -s $(PWD)/.gitconfig	$(HOME)/.gitconfig
	# ln -s $(PWD)/.zshrc		$(HOME)/.zshrc

neobundle:
	git clone https://github.com/Shougo/neobundle.vim $(PWD)/.vim/bundle/neobundle.vim
