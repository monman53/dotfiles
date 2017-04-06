all:
	@[ -d $(HOME)/.vim ]	||	ln -s $(PWD)/.vim	$(HOME)/.vim
	ln -s $(PWD)/.zshrc		$(HOME)/.zshrc
	ln -s $(PWD)/.gitconfig	$(HOME)/.gitconfig

neobundle:
	git clone https://github.com/Shougo/neobundle.vim $(PWD)/.vim/bundle/neobundle.vim
