cat vimrcs/plugins.vim > .vimrc
cat vimrcs/editor.vim >> .vimrc
cat vimrcs/gui.vim >> .vimrc

./bundle/YouCompleteMe/install.py --gocode-completer

