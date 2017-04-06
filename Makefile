all:
	@[ -d $(HOME)/.vim ]	||	ln -s $(PWD)/.vim	$(HOME)/.vim
	ln -s $(PWD)/.zshrc		$(HOME)/.zshrc
	ln -s $(PWD)/.gitconfig	$(HOME)/.gitconfig
